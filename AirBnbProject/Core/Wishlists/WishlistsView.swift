//
//  WishlistView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 06/01/2026.
//

import SwiftUI

struct WishlistsView: View {
    @State var ispresented: Bool = false
    @EnvironmentObject var authMananger:AuthManager
    var body: some View {
        VStack{
            if authMananger.usersession == nil {
                VStack(alignment:.leading,spacing: 60){
                    Text("WishLists")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    VStack(alignment:.leading){
                        Text("Log in to View Your WishLists.")
                            .fontWeight(.bold)
                        Text("You can create, view or edit WishLists once you've logged in")
                            .font(.caption)
                        
                    }
                    .padding(.horizontal, 20)
                    
                }
                .frame(width: 360, alignment: .leading)
                VStack{
                    Button {
                        ispresented.toggle()
                    } label: {
                        Text("login")
                    }
                    .modifier(ButtonModifier())
                }
                .padding(.top, 40)
                Spacer()
            }else{
                Text("Show Wishlists here")
            }
    
        }
        .sheet(isPresented: $ispresented) {
            LoginView()
        }
    }
}

#Preview {
    WishlistsView()
}
