//
//  Image.swift
//  FeedsApp
//
//  Created by Nilay on 14/10/23.
//

import Foundation


struct FeedImage: Codable, Identifiable {
    let id, author: String
    let width, height: Int
    let url, downloadURL: String

    enum CodingKeys: String, CodingKey {
        case id, author, width, height, url
        case downloadURL = "download_url"
    }
}

