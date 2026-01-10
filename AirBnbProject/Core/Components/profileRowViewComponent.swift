//
//  profileRowViewComponent.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 06/01/2026.
//

import SwiftUI

struct profileRowViewComponent: View {
    let imagename: String
    let title: String
    var body: some View {
        VStack {
            HStack{
                Image(systemName: imagename)
                    .fontWeight(.semibold)
                Text(title)
                Spacer()
                Image(systemName: "chevron.right")
                    .fontWeight(.semibold)
                
            }
            Divider()
        }
        .padding(.horizontal)
    }
}

#Preview {
    profileRowViewComponent(imagename: "gear", title: "Settings")
}
