//
//  FeedItem.swift
//  FeedsApp
//
//  Created by Nilay on 14/10/23.
//

import SwiftUI
import Kingfisher

struct FeedItem: View {
    
    let feedData: FeedImage
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            KFImage(URL(string: feedData.downloadURL))
                .aspectRatio(contentMode: .fit)
                .scaledToFit()
                .frame(width: 380, height: 400)
                .padding(.bottom, 40)
                .cornerRadius(4)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(feedData.author)
                    .font(.headline)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
        }
    }
}



//#Preview {
//    FeedItem()
//}
