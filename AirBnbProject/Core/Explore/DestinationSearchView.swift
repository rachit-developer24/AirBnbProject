//
//  DestinationSearchView.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 04/01/2026.
//

import SwiftUI
enum DestinationSearchOptions{
    case locations
    case dates
    case guests
}

struct DestinationSearchView: View {
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    @State var selectedOption:DestinationSearchOptions = .locations
    @Binding var isSearchActive: Bool
    @State var dates:String = ""
    @State var guests: String = ""
    @State var destinations: String = ""
    var body: some View {
        VStack{
            HStack{
                Button {
                    withAnimation(.snappy){
                        isSearchActive.toggle() }
                    
                } label: {
                    Image(systemName: "x.circle")
                        .foregroundStyle(.black)
                        .imageScale(.large)
                }
                Spacer()
                
                if !destinations.isEmpty{
                        Button {
                            destinations = ""
                        } label: {
                            Text("Clear")
                                .foregroundStyle(.black)
                                .fontWeight(.semibold)
                        }
                }

            }
            .padding()
            VStack{
                if selectedOption == .locations{
                    VStack(alignment:.leading){
                        Text("Where to?")
                            .fontWeight(.semibold)
                            .font(.title2)
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .imageScale(.small)
                            TextField("Search destinations...", text: $destinations)
                                .font(.subheadline)
                                
                        }
                        .frame(height: 44)
                        .padding(.horizontal)
                        .overlay{
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1.0)
                                .foregroundStyle(Color(.systemGray5))
                        }
                       
                        
                    }
                    .padding()
                    .background(Color(.white))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding()
                    .shadow(radius: 10)
                }else{
                    CollapsedPickerView(title: "Where", Description: "Add destinations")
                        .padding()
                        .background(Color(.white))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding()
                        .shadow(radius: 10)
                }
            }
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .locations
                }
               
            }
         
            VStack{
                if selectedOption == .dates{
                    VStack(alignment:.leading){
                        Text("When's is your trip?")
                            .font(.title2)
                            .fontWeight(.semibold)
                        VStack(spacing:10){
                            DatePicker("From", selection: $startDate, displayedComponents: .date)
                            Divider()
                            DatePicker("To", selection: $endDate, displayedComponents: .date)
                        }
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    }
                    
                }else{
                    CollapsedPickerView(title: "When", Description: "Add dates")
                }
            }
            .padding()
            .modifier(CollapsibleDestinationViewModifier())
                .frame(height: selectedOption == .dates ? 164 : 64)
                .onTapGesture {
                    withAnimation(.snappy){
                        selectedOption = .dates
                    }
                   
                }

            
            VStack(alignment:.leading){
                if selectedOption == .guests{
                        Text("Who's coming?")
                            .font(.title)
                            .fontWeight(.semibold)
                    Stepper{
                        Text("\(numGuests) Adults")
                    }onIncrement: {
                        numGuests += 1
                    }onDecrement: {
                        guard numGuests > 0 else{return}
                        numGuests -= 1
                    }

                    
                }else{
                    CollapsedPickerView(title: "Who", Description: "Add guests")
                        
                }
            }.padding()
                .modifier(CollapsibleDestinationViewModifier())
                .frame(height: selectedOption == .guests ? 124 : 64)
                .onTapGesture {
                    withAnimation(.snappy){
                        selectedOption = .guests
                    }
                }
        }
        Spacer()
    }
}

#Preview {
    DestinationSearchView(isSearchActive: .constant(false))
}
