//
//  ExploreViewModel.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 06/01/2026.
//

import Foundation
@MainActor
class ExploreViewModel:ObservableObject{
    @Published var listings = [Listing]()
    @Published var searchLocation:String = ""
    private var listingsCopy:[Listing] = []
    var error:Error?
    let service:ExploreService
    init(service:ExploreService){
        self.service = service
        Task{
            await fetchListings()
        }
    }
    
    func fetchListings()async{
        do{
            self.listings = try await service.fetchListings()
            self.listingsCopy = self.listings
        }catch{
            self.error = error
        }
    }
    func updateListingsForLocation(){
        let filteredListings = listings.filter({
            $0.state.lowercased() == searchLocation.lowercased()
            || $0.city.lowercased() == searchLocation.lowercased()
        })
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
}
