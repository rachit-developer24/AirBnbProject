//
//  LoginViewModel.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 12/01/2026.
//

import Foundation

class LoginViewModel:ObservableObject{
    
    @Published var email: String = ""
    @Published var password: String = ""
    
    func login(service:AuthManager) async throws {
        try await service.login(email: email, password: password)
    }
    
}
