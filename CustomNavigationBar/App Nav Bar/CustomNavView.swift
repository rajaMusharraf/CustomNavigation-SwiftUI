//
//  CustomNavView.swift
//  Q3
//
//  Created by Musharaf on 23/09/2024.
//

import SwiftUI

struct CustomNavView<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationView {
            CustomNavBarContainerView(content: {
                content
            })
            .navigationBarBackButtonHidden(true)
        }
        .customNavBarItems(model: NavBarModel(isBackButton: true,
                                                  title: "First Screen",
                                                  subTitle: nil,
                                                  backgroundColor: .red))
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    CustomNavView {
        Color.green.ignoresSafeArea()
    }
}
