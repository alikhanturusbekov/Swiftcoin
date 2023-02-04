//
//  AllCoinsView.swift
//  Swiftcoin
//
//  Created by Alikhan Turusbekov on 04.02.2023.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack{
                Text("Coin")
                
                Spacer()
                
                Text("Price")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    ForEach(0 ..< 50, id: \.self){ _ in
                        CoinRowView()
                    }
                }
            }
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
