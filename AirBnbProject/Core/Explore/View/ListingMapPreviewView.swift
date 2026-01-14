//
//  ListingMapPreviewView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 11/01/2026.
//
import SwiftUI

struct ListingMapPreviewView: View {
    let listing: Listing

    var body: some View {
        VStack {
            TabView {
                ForEach(listing.imageURLs, id: \.self) { imageurl in
                    Image(imageurl)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Rectangle())
                }
            }
            .frame(height: 200)
            .tabViewStyle(.page)

            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)

                    Text("7 nights: dec 12 - 20")
                        .foregroundStyle(.gray)

                    HStack(spacing: 3) {
                        Text("$\(listing.pricePerNight) night")
                            .fontWeight(.semibold)
                    }
                }

                Spacer()

                Text("\(listing.rating)")
            }
            .padding(.horizontal, 5)
            .font(.footnote)
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .padding(.bottom)
    }
}

#Preview {
    ListingMapPreviewView(listing: DeveloperPreview.shared.listings[0])
}
