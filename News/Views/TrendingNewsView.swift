//
//  TrendingNewsView.swift
//  News
//
//  Created by Aditya Ghorpade on 14/04/24.
//

import SwiftUI

struct TrendingNewsView: View {
    
    var news: ResponseBody?
    @State var showSheet: Bool = false
    @State var url: String = ""
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 30) {
                ForEach(news?.articles ?? dummmyResponse, id: \.source?.id) { news in
                    VStack(alignment: .leading) {
                        AsyncImage(url: URL(string: news.urlToImage ?? "https://picsum.photos/270/150")) { image in
                            image
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(width: 270, height: 150)
                            
                        } placeholder: {
                            ProgressView()
                        }
                        
                        //WebView(url: (URL(string: news.url ?? "https://www.google.com/") ?? URL(string: "https://www.google.com/" ))!)
                        
                        Text(news.title ?? "No value")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 270, height: 240)
                    .onTapGesture {
                        showSheet = true
                    }
                    .sheet(isPresented: $showSheet, content: {
                        DetailedNewsView(url: URL(string: news.url!)!)
                    })
                }
            }
            
        }
    }
}

#Preview {
    TrendingNewsView()
}
