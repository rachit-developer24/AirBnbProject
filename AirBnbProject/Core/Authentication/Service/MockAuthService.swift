//
//  MockAuthService.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 12/01/2026.
//

import Foundation
struct MockAuthService:AuthServiceProtocol{
    
    func login(with email: String, password: String)async throws ->String?{
        return UUID().uuidString
    }
    
    func createUser(with email: String, password: String, fullName: String)async throws ->String?{
        return UUID().uuidString
    }
    
    func signOut(){
        
    }
}
