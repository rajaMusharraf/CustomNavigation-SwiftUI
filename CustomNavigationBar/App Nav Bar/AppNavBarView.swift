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
                Text("Naviagte to second screen")
            }
            .customNavBarItems(model: NavBarModel(isBackButton: false,
                                                  title: "First Screen Title",
                                                  subTitle: "First Screen Description",
                                                  backgroundColor: .red))
        }
        
    }
}

#Preview {
    AppNavBarView()
}
