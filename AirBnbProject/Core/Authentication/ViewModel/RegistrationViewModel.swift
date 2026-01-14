//
//  RegistrationViewModel.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 12/01/2026.
//

import Foundation
class RegistrationViewModel:ObservableObject{
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var name: String = ""

    
    func createUser(service:AuthManager) async throws {
        try await service.createUser(email: email, password: password, fullName: name)
    }
}
