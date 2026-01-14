//
//  ExploreView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 31/12/2025.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var ViewModel = ExploreViewModel(service: ExploreService())
    @State var showMapView: Bool = false
    @State private var showDestinationSearchView: Bool = false
    var body: some View {
        NavigationStack{
            if showDestinationSearchView{
                DestinationSearchView(isSearchActive: $showDestinationSearchView)
                    
            }else{
                SearchFilterBar(location: $ViewModel.searchLocation)
                    .onTapGesture {
                        withAnimation(.snappy){
                           showDestinationSearchView.toggle()
                        }
                    }
                    .padding(.horizontal)
                ZStack(alignment:.bottom){
                    ScrollView{
                        LazyVStack(spacing:32){
                            ForEach(ViewModel.listings){ listing in
                                NavigationLink(value: listing) {
                                    ListingsItemView(listings: listing)
                                }
                            }.padding(.top,30)
                        }
                    }
                    .navigationDestination(for: Listing.self) { listing in
                        ListingDetailView( listings: listing)
                            .navigationBarBackButtonHidden()
                            .toolbarBackground(.hidden, for: .navigationBar)
                        
                        
                    }
                    Button {
                        showMapView.toggle()
                    } label: {
                        HStack{
                            Text("Map")
                            Image(systemName: "paperplane")
                        }
                        .foregroundStyle(.white)
                        .padding(.vertical,12)
                        .padding(.horizontal)
                        .background(Color.black)
                        .clipShape(Capsule())
                        .padding()
                    }
                    .sheet(isPresented: $showMapView) {
                        ListingMapView(listings: ViewModel.listings)
                    }

                }
            }
          
            
        }.environmentObject(ViewModel)
    }
}
#Preview {
    ExploreView()
}
