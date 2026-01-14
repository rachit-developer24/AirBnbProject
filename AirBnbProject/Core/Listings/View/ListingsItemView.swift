//
//  ListingsItemViw.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 31/12/2025.
//

import SwiftUI

struct ListingsItemView: View {
    let listings:Listing
    var body: some View {
        VStack(spacing:8){
            ListingImageCarouselView(listings: listings)
                .frame(width: 360, height: 350)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            HStack{
                VStack(alignment:.leading){
                    Text("\(listings.title) ,\(listings.city)")
                        .fontWeight(.semibold)
                    Text("12 mil away")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    Text("Nov 3-10")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    HStack(spacing:2){
                        Text("$\(listings.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                Spacer()
                HStack(spacing:2){
                    Image(systemName: "star.fill")
                    Text("\(listings.rating)")
                }
                .padding(.bottom,49)
            }
            .font(.footnote)
            .frame(width: 350,alignment: .leading)
            .foregroundStyle(.black)
        }
    }
}


#Preview {
    ListingsItemView(listings: DeveloperPreview.shared.listings[0])
}
