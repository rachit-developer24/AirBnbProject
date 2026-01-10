//
//  WishlistView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 06/01/2026.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        VStack{
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
                    
                } label: {
                    Text("login")
                }
                .frame(width: 360, height: 50)
                .foregroundStyle(.white)
                .background(Color.pink)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding(.top, 40)
            Spacer()
        }
    }
}

#Preview {
    WishlistsView()
}
