//
//  ExploreService.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 06/01/2026.
//

import Foundation
class ExploreService{
    
    func fetchListings()async throws -> [Listing] {
            return DeveloperPreview.shared.listings
    }
}
