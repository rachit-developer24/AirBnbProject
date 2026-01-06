//
//  CollapsedPickerView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 04/01/2026.
//

import SwiftUI

struct CollapsedPickerView: View {
    
    let title: String
    let Description: String
    var body: some View {
        HStack{
            Text(title)
                .foregroundStyle(.gray)
            Spacer()
            Text(Description)
                .fontWeight(.semibold)
        }
       
        
    }
}

#Preview {
    CollapsedPickerView(title: "When", Description: "Add dates")
}
