//
//  FirebaseAuthService.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 13/01/2026.
//

import Foundation
import Firebase
import FirebaseAuth

struct FirebaseAuthService:AuthServiceProtocol{
    
    func login(with email: String, password: String)async throws ->String?{
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            return result.user.uid
        }catch{
            throw error
        }
    }
    
    func createUser(with email: String, password: String, fullName: String)async throws ->String?{
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        return result.user.uid
    }
    
    func signOut(){
        try? Auth.auth().signOut()
    }
}
