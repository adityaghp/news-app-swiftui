//
//  ContentView.swift
//  News
//
//  Created by Aditya Ghorpade on 13/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = NewsAppViewModel()
    @State var response: ResponseBody?
    @State var responseError: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.3)
                    .ignoresSafeArea()
                VStack {
                    if let response = response {
                        NewsScreen(response: response)
                    } else {
                        ProgressView()
                            .task {
                                do {
                                    response = try await vm.getCurrentNews()
                                } catch {
                                    print("Error getting news data \(error)")
                                    responseError = true
                                }
                            }
                    }
                }
            }
            .ignoresSafeArea(edges: .bottom)
            .alert("Error!", isPresented: $responseError) {
                Button("Retry", role: .cancel) {}
                Button("Close", role: .destructive) { exit(0) }
            } message: {
                Text("Please check your internet connection!")
            }
        }
    }
}

#Preview {
    ContentView()
}
