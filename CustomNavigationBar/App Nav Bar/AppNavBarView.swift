//
//  AppNavBarView.swift
//  Q3
//
//  Created by Musharaf on 20/09/2024.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView {
            CustomNavLink(
                destination:
                    PersonDetailView(person: Person(name: "Musharraf", address: "Islamabad"))
            ) {
                Text("Naviagte")
            }
            .customNavBarItems(model: NavBarModel(isBackButton: false,
                                                  title: "First Screen",
                                                  subTitle: "First Screen",
                                                  backgroundColor: .red))
        }
        
    }
}

#Preview {
    AppNavBarView()
}
