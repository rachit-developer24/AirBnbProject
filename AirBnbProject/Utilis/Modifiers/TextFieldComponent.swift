//
//  TextFieldComponent.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 12/01/2026.
//

import SwiftUI

struct TextFieldComponent: View {
    @Binding var input: String
    let placeholder: String
    var isSecure: Bool
    var body: some View {
        if isSecure{
            SecureField(placeholder, text: $input)
                .padding()
                .frame(width: 360, height: 50)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
        }else{
            TextField(placeholder, text: $input)
                .padding()
                .frame(width: 360, height: 50)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    TextFieldComponent(input: .constant(""), placeholder: "Enter your email..", isSecure: true)
}
