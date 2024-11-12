//
//  NetworkManager.swift
//  MenuApp
//
//  Created by Timur on 11/11/24.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizers(complited: @escaping (Result<[Appetizer], APError>) -> Void) {
        guard let url = URL(string: appetizerURL) else {
            complited(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let error = error else {
                complited(.failure(.unableToComplite))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                complited(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                complited(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                complited(.success(decodedResponse.request))
            } catch {
                complited(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
}
