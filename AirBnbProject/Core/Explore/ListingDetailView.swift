//
//  ListingItemView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 01/01/2026.
//

import SwiftUI
import MapKit
struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
            ScrollView{
                VStack{
                    ZStack(alignment:.topLeading){
                        ListingImageCarouselView()
                            .frame(height: 320)
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "chevron.left")
                                .foregroundStyle(.black)
                                .background{
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 30, height: 42)
                                       
                                }
                                .padding(32)
                                
                        }
                        .padding(.top,28)
                    }
                    VStack(alignment:.leading,spacing: 7){
                        Text("Miami Villa")
                            .fontWeight(.bold)
                            .font(.title2)
                        VStack(alignment:.leading){
                            HStack{
                                Image(systemName: "star.fill")
                                Text("4.86 -")
                                Text("28 reviews")
                                    .underline(true, color: .black)
                                    .fontWeight(.bold)
                            }
                            .font(.caption)
                            Text("Miami,florida")
                                .font(.caption)
                        }
                    }
                    .frame(width: 370, height: 90, alignment: .leading)
                    Divider()
                    HStack{
                            VStack(alignment:.leading){
                            Text("Entire Villa Hosted")
                                .fontWeight(.bold)
                            Text("John Smith")
                                .fontWeight(.bold)
                            HStack{
                                Text("4 guests -")
                                Text("4 bedrooms -")
                                Text("4 beds -")
                                Text("3 baths")
                            }
                            .font(.caption)
                        }
                        Spacer()
                        Image("owner")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .scaledToFill()
                            .clipShape(Circle())
                    }
                    .padding()
                    Divider()
                    
                    VStack(alignment:.leading,spacing: 12){
                        ForEach(0  ..< 2,id: \.self){ features in
                            HStack{
                                Image(systemName: "medal")
                                VStack(alignment: .leading){
                                    Text("superhost")
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                    Text("Superhosts are  experience, highly rated hosts who are commited to providing great starts for guests.")
                                        .font(.caption)
                                        .foregroundStyle(.gray)
                                }
                              
                            }
                            
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    Divider()
                    VStack(alignment:.leading,spacing: 16){
                        Text("Where you'll sleep")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        ScrollView(.horizontal,showsIndicators: false) {
                            HStack{
                            ForEach(1...4,id: \.self){bedroom in
                                VStack{
                                    Image(systemName: "bed.double")
                                    Text("bedroom \(bedroom)")
                                }
                                .frame(minWidth: 130, minHeight: 100)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 1).foregroundStyle(.gray)
                                }
                            }
                            }
                            
                        }
                        .scrollTargetBehavior(.paging)
                            
                        }
                    .padding()
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 16){
                        Text("What's this place offer?")
                            .font(.headline)
                            .fontWeight(.bold)
                        ForEach(0...4,id: \.self){ ameneties in
                            HStack{
                                Image(systemName: "wifi")
                                Text("Wifi")
                            }
                            
                        }
                    }
                    .padding()
                    .frame(width: 388,alignment: .leading)
                    Divider()
                    VStack(alignment:.leading,spacing: 16){
                        Text("Where you'll be")
                            .font(.headline)
                            .fontWeight(.bold)
                        Map()
                            .frame(height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    .padding()
                   
                }
              
            }
            .ignoresSafeArea()
            .padding(.bottom,110)
            .overlay(alignment:.bottom){
                VStack{
                    Divider()
                        .padding()
                    HStack{
                        VStack(alignment:.leading){
                            Text("$500")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Text("Total before taxs")
                                .font(.footnote)
                            Text("Oct 15 -20")
                                .underline()
                                .font(.footnote)
                                .fontWeight(.bold)
                        }
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Reserve")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                                .frame(width: 100, height: 35)
                                .background(Color.red)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }

                    }
                    .padding()
                }
                .background(Color.white)
            }
            
          
        }
       
    }


#Preview {
    ListingDetailView()
}
