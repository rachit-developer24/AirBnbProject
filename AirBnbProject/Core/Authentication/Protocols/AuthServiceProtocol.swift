//
//  AuthServiceProtocol.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 13/01/2026.
//

import Foundation
protocol AuthServiceProtocol{
    func login(with email: String, password: String)async throws ->String?
    func createUser(with email: String, password: String, fullName: String)async throws ->String?
    func signOut()
}
