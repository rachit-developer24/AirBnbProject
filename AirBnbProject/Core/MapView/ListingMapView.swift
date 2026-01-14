//
//  ListingMapView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 10/01/2026.
//
import SwiftUI
import _MapKit_SwiftUI
import CoreLocation

struct ListingMapView: View {
    private let listings: [Listing]
    @Environment(\.dismiss) var dismiss

    @State private var cameraPosition: MapCameraPosition

   
    @State private var selectedListing: Listing?

   
    @State private var selectedListingId: String?

    @State private var showDetails: Bool = false

    init(listings: [Listing]) {
        self.listings = listings

        let center = listings.first?.coordinates
            ?? CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437)

        let coordinateRegion = MKCoordinateRegion(
            center: center,
            latitudinalMeters: 60000,
            longitudinalMeters: 60000
        )
        self._cameraPosition = State(initialValue: .region(coordinateRegion))
    }


    var body: some View {
        ZStack(alignment: .topLeading) {
            ZStack(alignment: .bottom) {

                Map(position: $cameraPosition, selection: $selectedListingId) {
                    // Use ForEach(listings) if Listing is Identifiable (most stable)
                    ForEach(listings) { listing in
                        Marker(listing.city, coordinate: listing.coordinates)
                            .tag(listing.id) // String tag
                    }
                }
                .mapStyle(.standard)

               
                .onChange(of: selectedListingId) { _, newValue in
                    guard let id = newValue else {
                        selectedListing = nil
                        return
                    }
                    selectedListing = listings.first { $0.id == id }
                }

                if let selectedListing = selectedListing {
                    ListingMapPreviewView(listing: selectedListing)
                        .onTapGesture {
                            showDetails.toggle()
                        }
                }
            }

            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                            .shadow(radius: 4)
                    )
                    .padding(.top, 40)
                    .padding(.leading, 32)
            }
            .fullScreenCover(isPresented: $showDetails) {
                if let selectedListing = selectedListing {
                    ListingDetailView(listings: selectedListing)
                }
            }
        }
    }
}

#Preview {
    ListingMapView(listings: DeveloperPreview.shared.listings)
}
