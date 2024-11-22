//
//  Alert.swift
//  MenuApp
//
//  Created by Timur on 11/21/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    
}
