//
//  PersonDetailView.swift
//  CustomNavigationBar
//
//  Created by Musharaf on 24/09/2024.
//

import SwiftUI

struct PersonDetailView: View {
    var person : Person
    @Environment(\.dismiss) var dismissView
    
    var body: some View {
        
        VStack(spacing: 15) {
            Text("Name: \(person.name)")
            Text("Adress: \(person.address)")
            CustomNavLink(
                destination:
                    Text("Destination")
            ) {
                Text("Naviagte To Next Screen")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 12)
                        .fill(Color.red))
            }
            Button {
                dismissView()
            } label: {
                Text("Go Back")
                    .padding(10)
                    .foregroundColor(.white)
            }.background(RoundedRectangle(cornerRadius: 12)
                .fill(Color.red))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .customNavBarItems(model: NavBarModel(isBackButton: true,
                                              title: "Details",
                                              subTitle: "Person Details",
                                              backgroundColor: .mint))
        Spacer()
        Spacer()
    }
    
}

#Preview {
    PersonDetailView(person: Person(name: "John", address: "Pakistan"))
}
