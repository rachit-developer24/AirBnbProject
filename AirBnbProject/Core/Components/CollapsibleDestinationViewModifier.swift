//
//  CollapsibleDestinationViewModifier.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 06/01/2026.
//

import Foundation
import SwiftUICore
struct CollapsibleDestinationViewModifier:ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(.horizontal)
            .background(Color(.white))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
        
    }
}
