//
//  ProfileView].swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 06/01/2026.
//

import SwiftUI

struct ProfileView: View {
    @State var loginViewPresented: Bool = false
    @State var ispresented: Bool = false
    @EnvironmentObject var authManager:AuthManager
    var body: some View {
        VStack{
            if authManager.usersession == nil{
                VStack(spacing: 30){
                    VStack(alignment:.leading,spacing: 10){
                        Text("Profile")
                            .fontWeight(.bold)
                            .font(.title)
                        Text("Log in to start planning your next trip.")
                        
                    }
                    .frame(width: 360,alignment: .leading)
                    VStack{
                        Button {
                            loginViewPresented.toggle()
                        } label: {
                            Text("Log in ")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                                .frame(width: 360, height: 50)
                                .background(Color.pink)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                        }
                        
                    }
                    VStack(alignment:.leading){
                        HStack{
                            Text("Dont have an account ")
                            Button {
                                ispresented.toggle()
                            } label: {
                                Text("Sign up")
                                    .fontWeight(.bold)
                                    .underline()
                                    .foregroundStyle(.black)
                            }
                            
                        }
                        .frame(width: 360,alignment:.leading)
                        .font(.footnote)
                    }
                    
                }
            }else{
                UserProfileHeaderView()
            }
            VStack(spacing:25){
                profileRowViewComponent(imagename: "gear", title: "Settings")
                profileRowViewComponent(imagename: "gear", title: "Accessibility")
                profileRowViewComponent(imagename: "questionmark.circle", title: "Visit the Help Center")
                
            }
            .padding(.vertical,10)
            .sheet(isPresented: $ispresented) {
                RegistrationView()
            }
            .sheet(isPresented: $loginViewPresented) {
                LoginView()
            }
            if authManager.usersession != nil{
                VStack{
                    Button(action: {
                        
                    }, label: {
                        Text("Logout")
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                    })
                }.frame(width: 360, alignment: .leading)}
        }
    }
}
#Preview {
    ProfileView()
}
