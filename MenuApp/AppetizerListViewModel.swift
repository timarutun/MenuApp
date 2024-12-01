//
//  AppetizerListVIewModel.swift
//  MenuApp
//
//  Created by Timur on 11/20/24.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async{
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        self.allertItem = AlertContext.invalidResponse
                    case .invalidURL:
                        self.allertItem = AlertContext.invalidURL
                    case .invalidData:
                        self.allertItem = AlertContext.invalidData
                    case .unableToComplite:
                        self.allertItem = AlertContext.unableToComplite
                    }
                }
            }
        }
    }
    
}
