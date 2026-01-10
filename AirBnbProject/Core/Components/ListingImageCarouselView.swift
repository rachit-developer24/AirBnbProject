//
//  ListingImageCarouselView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 01/01/2026.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listings:Listing
    var body: some View {
        TabView{
            ForEach(listings.imageURLs,id:\.self){ image in
                Image(image)
                    .resizable()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listings: DeveloperPreview.shared.listings[0])
}
