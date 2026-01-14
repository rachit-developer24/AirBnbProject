//
//  Name + String.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 12/01/2026.
//

import Foundation
extension String {
    func isValidName() -> Bool {
        let nameRegex = "^[A-Za-z][A-Za-z' -]{1,49}$"
        return NSPredicate(format: "SELF MATCHES %@", nameRegex).evaluate(with: self)
    }
}
