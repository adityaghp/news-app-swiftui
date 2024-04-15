//
//  NewsView.swift
//  News
//
//  Created by Aditya Ghorpade on 14/04/24.
//

import SwiftUI

struct NewsView: View {
    
    var response: ResponseBody?
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                TabBarView()
                TrendingNewsView(news: response)
                CategoriesView()
                CategoryNewsView(news: response)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            //.padding(.bottom, 20)
            .background(.accent)
            .cornerRadius(30, corners: [.topLeft, .topRight])
        }
    }
}

#Preview {
    NewsView()
}
