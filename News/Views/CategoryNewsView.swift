//
//  CategoryNewsView.swift
//  News
//
//  Created by Aditya Ghorpade on 14/04/24.
//

import SwiftUI

struct CategoryNewsView: View {
    
    var news: ResponseBody?
    @State var showSheet: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 50) {
                ForEach(news?.articles ?? dummmyResponse, id: \.source?.id) { news in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(news.title ?? "No value")
                                .font(.headline)
                            .multilineTextAlignment(.leading)
                            Spacer()
                            Text((Date().formatted(.dateTime.day().month().year())))
                                .foregroundStyle(Color.gray)
                        }
                        
                        Spacer()
                        
                        AsyncImage(url: URL(string: news.urlToImage ?? "https://picsum.photos/100/100")) { image in
                            image
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(width: 100, height: 100)
                               
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    .frame(height: 110)
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
    CategoryNewsView()
}
