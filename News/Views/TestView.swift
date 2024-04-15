//
//  TestView.swift
//  News
//
//  Created by Aditya Ghorpade on 14/04/24.
//

import SwiftUI
import WebKit

struct TestView: View {
    var body: some View {
        VStack {
            WebView(url: URL(string: "https://google.com")!)
        }
    }
}

struct WebView: UIViewRepresentable {
    
    let url: URL

    func makeUIView(context: Context) -> WKWebView {

        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {

        let request = URLRequest(url: url)
        webView.load(request)
    }
}

#Preview {
    TestView()
}
