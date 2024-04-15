//
//  CategoriesView.swift
//  News
//
//  Created by Aditya Ghorpade on 14/04/24.
//

import SwiftUI

struct CategoriesView: View {
    
    @State var textColor1: Bool = true
    @State var textColor2: Bool = false
    @State var textColor3: Bool = false
    @State var textColor4: Bool = false
    
    var body: some View {
        HStack {
            Text("All")
                .foregroundStyle(textColor1 ? Color.primary : Color.gray)
                .onTapGesture {
                    withAnimation {
                        textColor1 = true
                        textColor2 = false
                        textColor3 = false
                        textColor4 = false
                    }
                }
            Spacer()
            Text("Business")
                .foregroundStyle(textColor2 ? Color.primary : Color.gray)
                .onTapGesture {
                    withAnimation {
                        textColor2 = true
                        textColor1 = false
                        textColor3 = false
                        textColor4 = false
                    }
                }
            Spacer()
            Text("Sports")
                .foregroundStyle(textColor3 ? Color.primary : Color.gray)
                .onTapGesture {
                    withAnimation {
                        textColor3 = true
                        textColor1 = false
                        textColor2 = false
                        textColor4 = false
                    }
                }
            Spacer()
            Text("Finance")
                .foregroundStyle(textColor4 ? Color.primary : Color.gray)
                .onTapGesture {
                    withAnimation {
                        textColor4 = true
                        textColor2 = false
                        textColor3 = false
                        textColor1 = false
                    }
                }
        }
        .foregroundStyle(.gray)
        .font(.title)
        .padding(.vertical)
    }
}

#Preview {
    CategoriesView()
}
