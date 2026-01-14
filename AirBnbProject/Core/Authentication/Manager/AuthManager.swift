//
//  AuthManager.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 12/01/2026.
//

import Foundation
@MainActor
class AuthManager:ObservableObject{
    
    @Published var usersession:String?
    
    let service:AuthServiceProtocol
    
    init(service: AuthServiceProtocol) {
        self.service = service
    }
    
    func login(email:String,password:String)async throws{
        self.usersession = try await service.login(with: email, password: password)
    }
    
    func createUser(email:String,password:String,fullName:String)async throws{
        self.usersession = try await service.createUser(with: email, password: password, fullName: fullName)
    }
    
    func signOut(){
        service.signOut()
    }
}
