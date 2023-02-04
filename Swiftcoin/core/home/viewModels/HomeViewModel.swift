//
//  HomeViewModel.swift
//  Swiftcoin
//
//  Created by Alikhan Turusbekov on 04.02.2023.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    
    init() {
        fetchCoinData()
    }
    
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=10&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else { return }
                
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print("DEBUG: ERROR \(error.localizedDescription)")
            }
            
            if let response = response as? HTTPURLResponse{
                print("DEBUG: Response code \(response.statusCode)")
            }
            
            guard let data = data else { return }
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                print("DEBUG: Coins \(coins)")
            } catch let error {
                print("Failed to decode with error \(error)")
            }
        }.resume()
    }
}
