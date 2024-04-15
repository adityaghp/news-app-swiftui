//
//  NewsScreen.swift
//  News
//
//  Created by Aditya Ghorpade on 13/04/24.
//

import SwiftUI

struct NewsScreen: View {
    
    var response: ResponseBody?
    
    var body: some View {
        ZStack {
            VStack {
                PersonalDetailsView()
                    .padding(.horizontal)
                NewsView(response: response)
                //TestView(news: response)
                Spacer()
            }
            //.padding()
        }
    }
}

#Preview {
    NewsScreen()
}
