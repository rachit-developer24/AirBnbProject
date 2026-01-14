//
//  DevelopersPreview.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 06/01/2026.
//

import Foundation
import Foundation

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()

    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["hotels-2", "hotels-1", "hotels-3", "hotels-4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 763,
            latitude: 40.7580,
            longitude: -73.9855,
            imageURLs: ["hotels-1", "hotels-2", "hotels-3", "hotels-4"],
            address: "888 7th Ave",
            city: "New York",
            state: "New York",
            title: "Beachfront Apartment",
            rating: 4.72,
            features: [.selfCheckIn],
            amenities: [.wifi, .kitchen, .tv, .laundry],
            type: .apartment
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 6,
            numberOfBeds: 3,
            pricePerNight: 489,
            latitude: 34.0522,
            longitude: -118.2437,
            imageURLs: ["hotels-3", "hotels-4", "hotels-1", "hotels-2"],
            address: "456 Sunset Blvd",
            city: "Los Angeles",
            state: "California",
            title: "Modern City House",
            rating: 4.65,
            features: [.superHost],
            amenities: [.wifi, .kitchen, .office, .alarmSystem, .tv],
            type: .house
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 2,
            numberOfBathrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 410,
            latitude:  34.0195,
            longitude:  -118.4912,
            imageURLs: ["hotels-4", "hotels-2", "hotels-1", "hotels-3"],
            address: "450 Sunset Blvd",
            city: "Los Angeles",
            state: "California",
            title: "Town Home Getaway",
            rating: 4.58,
            features: [.selfCheckIn],
            amenities: [.wifi, .kitchen, .balcony, .tv],
            type: .townHouse
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 5,
            numberOfBathrooms: 4,
            numberOfGuests: 10,
            numberOfBeds: 6,
            pricePerNight: 920,
            latitude: 37.7749,
            longitude: -122.4194,
            imageURLs: ["hotels-5", "hotels-2", "hotels-3", "hotels-4"],
            address: "12 Market St",
            city: "San Francisco",
            state: "California",
            title: "Luxury Waterfront Villa",
            rating: 4.94,
            features: [.selfCheckIn, .superHost],
            amenities: [.pool, .wifi, .kitchen, .laundry, .tv, .alarmSystem, .balcony],
            type: .villa
        ),

        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 1,
            pricePerNight: 255,
            latitude: 30.2672,
            longitude: -97.7431,
            imageURLs: ["hotels-2", "hotels-3", "hotels-4", "hotels-5"],
            address: "301 Congress Ave",
            city: "Austin",
            state: "Texas",
            title: "Cozy Downtown Studio",
            rating: 4.41,
            features: [.selfCheckIn],
            amenities: [.wifi, .kitchen, .office, .tv],
            type: .apartment
        )
    ]
}

