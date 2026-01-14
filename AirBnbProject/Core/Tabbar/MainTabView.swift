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
                    Label("Wishlists",systemImage: "heart")
                }
            ProfileView()
                .tabItem {
                    Label("Profile",systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainTabView()
}
