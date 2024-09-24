//
//  AppNavBarView.swift
//  Q3
//
//  Created by Musharaf on 20/09/2024.
//

import SwiftUI

struct AppNavBarView: View {
    @State var getDataBack: String = ""
    var body: some View {
        CustomNavView {
            CustomNavLink(
                destination:
                    PersonDetailVie(person: Person(name: "Test", address: "User Address"), getDataBack: $getDataBack)
//                    Text("Destination")
//                    .customNavBarItems(model: NavBarModel(isBackButton: true,
//                                                          title: "Second Screen",
//                                                          subTitle: "Second Screen SubTitle",
//                                                          backgroundColor: .yellow))
            ) {
                Text("Naviagte")
            }
            .customNavBarItems(model: NavBarModel(isBackButton: false,
                                                  title: "First Screen",
                                                  subTitle: "First Screen",
                                                  backgroundColor: .red))
        }
        
    }
    
    private var defaultNavBar: some View {
        NavigationStack {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink {
                    Text("Destination")
                        .navigationTitle("Destination Title")
                } label: {
                    Text("Naviagte")
                }
                
            }
            .navigationTitle("Nav title here")
        }
    }
}

#Preview {
    AppNavBarView()
}
