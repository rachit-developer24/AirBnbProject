//
//  SearchFilterBar.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 01/01/2026.
//

import SwiftUI

struct SearchFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            VStack(alignment:.leading){
                Text("where to ?")
                    .fontWeight(.semibold)
                Text("Anywhere - Any Week - Add Guests")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Spacer()
            Image(systemName: "line.3.horizontal.decrease.circle")
                .foregroundStyle(.black)
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .overlay{
            Capsule().stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color:.black.opacity(0.4) ,radius: 1)
        }
    }
}

#Preview {
    SearchFilterBar()
}
