//
//  MainTabView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 06/01/2026.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem {
                    Label("Explore",systemImage: "magnifyingglass")
                }
            WishlistsView()
                .tabItem {
                    Label("Explore",systemImage: "heart")
                }
            ProfileView()
                .tabItem {
                    Label("Explore",systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainTabView()
}
