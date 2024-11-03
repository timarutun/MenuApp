//
//  AppetizerListView.swift
//  MenuApp
//
//  Created by Timur on 10/19/24.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers, id: \.id) { appetizer in
                Text(appetizer.name)
            }
        }
    }
}

#Preview {
    AppetizerListView()
}
