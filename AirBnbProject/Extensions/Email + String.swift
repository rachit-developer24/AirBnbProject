//
//  Email + String.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 12/01/2026.
//

import Foundation
extension String {
    func isValidEmail() -> Bool {
        let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: self)
    }
}
