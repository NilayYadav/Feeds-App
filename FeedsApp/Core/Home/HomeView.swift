//
//  HomeView.swift
//  FeedsApp
//
//  Created by Nilay on 14/10/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                FeedsView(viewModel: viewModel)
            }
            .navigationTitle("Feeds")
        }
    }
}

#Preview {
    HomeView()
}
