//
//  TabBarView.swift
//  News
//
//  Created by Aditya Ghorpade on 14/04/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        HStack {
            Text("Trending News")
                .bold()
                //.padding(.bottom)
            Spacer()
            Text("See All")
                .bold()
                //.padding(.bottom)
                .foregroundStyle(Color.gray)
            Image(systemName: "arrow.right.circle")
                .font(.title2)
                //.padding(.bottom)
                .foregroundStyle(Color.gray)
        }
    }
}

#Preview {
    TabBarView()
}
