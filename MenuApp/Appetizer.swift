//
//  Appetizer.swift
//  MenuApp
//
//  Created by Timur on 10/31/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
}

struct AppetizerResponse {
    
    let request: [Appetizer]
    
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "TestAppetizer",
                                           description: "Description for Appetizer",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 100,
                                           protein: 5,
                                           carbs: 10)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
