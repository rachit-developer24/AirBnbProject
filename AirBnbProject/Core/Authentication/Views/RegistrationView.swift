//
//  RegistrationView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 12/01/2026.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var ViewModel = RegistrationViewModel()
    @EnvironmentObject var authManager:AuthManager
    @Environment(\.dismiss)var dismiss
    var body: some View {
        NavigationStack{
            VStack(spacing:20){
                Spacer()
                Image("Air.Bnb.logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                VStack(spacing:15){
                    TextFieldComponent(input:$ViewModel.email , placeholder: "Enter Your Email...", isSecure: false)
                    TextFieldComponent(input:$ViewModel.password , placeholder: "Enter Your Password...", isSecure: true)
                    TextFieldComponent(input: $ViewModel.name, placeholder: "Enter Your Name...", isSecure: false)
                }
                Button {
                    Task{
                        try await ViewModel.createUser(service: authManager)
                    }
                    dismiss()
                } label: {
                    Text("Create Account")
                        .modifier(ButtonModifier())
                }
                .disabled(!isValid)
                .opacity(isValid ? 1 : 0.5)
                Spacer()
                
                Divider()
                Button {
                    dismiss()
                } label: {
                    Text("Already have an account? Sign in")
                        .foregroundStyle(.blue)
                        .fontWeight(.semibold)
                        .font(.footnote)
                } .padding(.bottom,30)

            }
        }
    }
}
extension RegistrationView {
        var isValid:Bool{
            return  ViewModel.email.isValidEmail() && ViewModel.password.isValidPassword() && ViewModel.name.isValidName()
        }
}

#Preview {
    RegistrationView()
}
