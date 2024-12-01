//
//  AppetizerListView.swift
//  MenuApp
//
//  Created by Timur on 10/19/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alertItem?.title, message: alertItem?.message, dismissButton: alertItem?.dismissButton)
        }
    }

}

#Preview {
    AppetizerListView()
}


