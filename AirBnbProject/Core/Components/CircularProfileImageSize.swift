//
//  CircularProfileImageView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 13/01/2026.
//

import SwiftUI

enum ProfileImageSize{
    case xxsmall
    case xsmall
    case small
    case medium
    case large
    case xlarge
    
    var dimensions: CGFloat {
        switch self {
        case .xxsmall:
            return 28
        case .xsmall:
            return 32
        case .small:
            return 40
        case .medium:
            return 48
        case .large:
            return 64
        case .xlarge:
            return 80
        }
    }
}

struct CircularProfileImageSize: View {
    var imageUrl: String?
    var size: ProfileImageSize
    var body: some View {
        if let imageUrl = imageUrl {
            Image(imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimensions, height: size.dimensions)
                .clipShape(Circle())
        }else{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimensions, height: size.dimensions)
                .foregroundStyle(Color(.systemGray5))
        }
    }
}

#Preview {
    CircularProfileImageSize( size: .large)
}
