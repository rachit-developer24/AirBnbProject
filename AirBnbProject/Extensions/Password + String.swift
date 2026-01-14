//
//  Password + String.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 12/01/2026.
//

import Foundation
extension String {
    func isValidPassword() -> Bool {
        let passwordRegex = "^.{6,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }

}
