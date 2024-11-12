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
    static let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizers(complited: @escaping (Result<[Appetizer], APError>) -> Void) {
        
    }
}
