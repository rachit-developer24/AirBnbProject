//
//  AirBnbProjectApp.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 31/12/2025.
//

import SwiftUI
import Firebase

@main
struct AirBnbProjectApp: App {
    @StateObject var authManager = AuthManager(service: FirebaseAuthService())
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authManager)
        }
    }
}
