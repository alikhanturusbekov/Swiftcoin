//
//  SwiftUIView.swift
//  Swiftcoin
//
//  Created by Alikhan Turusbekov on 04.02.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                TopMoversView()
                
                Divider()
                
                AllCoinsView()
            }
            .navigationTitle("Latest trends")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
