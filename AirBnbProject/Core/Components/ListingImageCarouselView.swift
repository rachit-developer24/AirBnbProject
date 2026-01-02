//
//  ListingImageCarouselView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 01/01/2026.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var listings = [
        "hotels-1",
        "hotels-2",
        "hotels-3",
        "hotels-4"
    ]
    var body: some View {
        TabView{
            ForEach(listings,id: \.self){ image in
                Image(image)
                    .resizable()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
