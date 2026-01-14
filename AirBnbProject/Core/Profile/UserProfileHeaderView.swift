//
//  UserProfileHeaderView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 13/01/2026.
//

import SwiftUI

struct UserProfileHeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.white)
                .frame(width: 300, height: 200)
                .shadow(radius: 4)
            VStack{
                CircularProfileImageSize(size: .large)
                VStack{
                    Text("John doe")
                        .fontWeight(.semibold)
                    Text("Guest")
                        .font(.footnote)
                }
            }
        }
    }
}

#Preview {
    UserProfileHeaderView()
}
