//
//  HomeViewModel.swift
//  FeedsApp
//
//  Created by Nilay on 14/10/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var images = [FeedImage]()
    
    init(){
        FetchFeeds()
    }
    
    func FetchFeeds () {
        let API = "https://picsum.photos/v2/list?page=2&limit=100"
        
        guard let url: URL = URL(string: API) else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error \(error)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("RESPONSE STATUS CODE \(response.statusCode)")
            }
            
            guard let data = data else { return }
            
            do {
                let images = try JSONDecoder().decode([FeedImage].self, from: data)
                DispatchQueue.main.async {
                    self.images = images
                }
            } catch let err {
                 print("Error Found \(err)")
            }
        }.resume()
    }
}
