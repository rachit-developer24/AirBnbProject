//
//  ButtonModifier.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 12/01/2026.
//

import Foundation
import SwiftUICore
struct ButtonModifier:ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .fontWeight(.bold)
            .frame(width: 360, height: 50)
            .background(Color.pink)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        
    }
}
