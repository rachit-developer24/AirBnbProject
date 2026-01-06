//
//  ExploreView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 31/12/2025.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView: Bool = false
    var body: some View {
        NavigationStack{
            if showDestinationSearchView{
                DestinationSearchView(isSearchActive: $showDestinationSearchView)
            }else{
                SearchFilterBar()
                    .onTapGesture {
                        withAnimation(.snappy){
                           showDestinationSearchView.toggle()
                        }
                    }
                    .padding(.horizontal)
                ScrollView{
                    LazyVStack(spacing:32){
                        ForEach(1...10, id: \.self){ listing in
                            NavigationLink(value: listing) {
                                ListingsItemView()
                            }
                        }.padding(.top,30)
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                        .toolbarBackground(.hidden, for: .navigationBar)

                       
                }
            }
          
            
        }
    }
}
#Preview {
    ExploreView()
}
