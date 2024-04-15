//
//  DetailedNewsView.swift
//  News
//
//  Created by Aditya Ghorpade on 14/04/24.
//

import SwiftUI

struct DetailedNewsView: View {
    
    @Environment(\.dismiss) var dissmiss
    let url: URL
    
    var body: some View {
        HStack {
            Text("News today")
                .bold()
                .font(.title)
                .padding()
            
            Spacer()
            Button {
                dissmiss()
            } label: {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(Color.gray.opacity(0.5))
                    .overlay {
                        Image(systemName: "xmark")
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                            .padding()
                    }
                    .padding()
            }
        }
        WebView(url: url)
    }
}

#Preview {
    DetailedNewsView(url: URL(string: "https://www.google.com/")!)
}
