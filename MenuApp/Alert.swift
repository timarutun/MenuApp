//
//  Alert.swift
//  MenuApp
//
//  Created by Timur on 11/21/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from server was invalid"),
                                       dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid respone"),
                                           dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("Invalid URL"),
                                      dismissButton: .default(Text("OK")))
    static let unableToComplite = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complite your request at this time"),
                                            dismissButton: .default(Text("OK")))
}
