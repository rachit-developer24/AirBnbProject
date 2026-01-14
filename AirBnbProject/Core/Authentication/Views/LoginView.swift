//
//  LoginView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 12/01/2026.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var authManager:AuthManager
    @StateObject var ViewModel = LoginViewModel()
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
                }
                HStack{
                    Spacer()
                    Text("Forgot Password?")
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue)
                        .font(.footnote)
                }
                .padding(.horizontal)
                
                Button {
                    Task{
                        try await ViewModel.login(service: authManager)
                    }
                    dismiss()
                } label: {
                    Text("Login")
                        .modifier(ButtonModifier())
                }
                .disabled(!isValid)
                .opacity(isValid ? 1 : 0.5)
                Spacer()
                
                Divider()
                NavigationLink(destination: {
                    RegistrationView()
                }, label: {
                    Text("Don't have an account? Sign Up")
                        .foregroundStyle(.blue)
                        .fontWeight(.semibold)
                        .font(.footnote)
                })
                .padding(.bottom,30)
            }
        }
    }
}
extension LoginView{
    var isValid:Bool{
        return ViewModel.email.isValidEmail() && ViewModel.password.isValidPassword()
    }
}

#Preview {
    LoginView()
}
