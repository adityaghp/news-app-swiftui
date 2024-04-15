//
//  PersonalDetailsView.swift
//  News
//
//  Created by Aditya Ghorpade on 13/04/24.
//

import SwiftUI

struct PersonalDetailsView: View {
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 10) {
                Text("Hi Aditya!")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Today, \(Date().formatted(.dateTime.day().month().year()))")
                    .foregroundStyle(Color.gray)
            }
            
            Spacer()
            
            Image(systemName: "bookmark")
                .font(.title)
            Image(systemName: "person.circle")
                .font(.system(size: 70))
        }
    }
}

#Preview {
    PersonalDetailsView()
}
