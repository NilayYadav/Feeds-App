//
//  FeedsView.swift
//  FeedsApp
//
//  Created by Nilay on 14/10/23.
//

import SwiftUI

struct FeedsView: View {
    
    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                VStack {
                    ForEach(viewModel.images) { feed in
                        FeedItem(feedData: feed)
                    }
                }
            }
        }
    }
}

//#Preview {
//    FeedsView()
//}
