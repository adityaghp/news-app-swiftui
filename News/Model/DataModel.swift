//
//  DataModel.swift
//  News
//
//  Created by Aditya Ghorpade on 13/04/24.
//

import Foundation

struct ResponseBody: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [Articles]
    
    struct Articles: Codable {
        let source: Source?
        let author: String?
        let title: String?
        let description: String?
        let url: String?
        let urlToImage: String?
        let publishedAt: String?
        let content: String?
        
        struct Source: Identifiable, Codable {
            var id: String? = UUID().uuidString
            let name: String?
        }
    }
}

var dummmyResponse = [ResponseBody.Articles(source: ResponseBody.Articles.Source(id: "", name: ""), author: "", title: "", description: "", url: "", urlToImage: "", publishedAt: "", content: "")]

enum NewsError: Error {
    case invalidURL
    case invalidResponse
    case requestFailed(Error)
}
