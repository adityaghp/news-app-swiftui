//
//  NewsAppViewModel.swift
//  News
//
//  Created by Aditya Ghorpade on 13/04/24.
//

import Foundation

class NewsAppViewModel: ObservableObject {
    
    func getCurrentNews() async throws -> ResponseBody {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=03ea2d3326cd413d9f4256bad5db9cec") else { throw NewsError.invalidURL }
        
        let urlRequest = URLRequest(url: url)
        
        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            
            print(data.description)
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                throw NewsError.invalidResponse
            }
            
            let decodedData = try JSONDecoder().decode(ResponseBody.self, from: data)
            
            return decodedData
        } catch {
            throw NewsError.requestFailed(error)
        }
    }
    
}
