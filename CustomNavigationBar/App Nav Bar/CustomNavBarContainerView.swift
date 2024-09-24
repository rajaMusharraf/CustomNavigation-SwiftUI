//
//  CustomNavBarContainerView.swift
//  Q3
//
//  Created by Musharaf on 20/09/2024.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    let content: Content
    @State private var navBar: NavBarModel = NavBarModel()
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            CustomAppNavBarView(navBar: navBar)
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarModelPreferenceKey.self, perform: { value in
//            print("Here")
//            print(value)
            self.navBar = value
        })
    }
}

#Preview {
    CustomNavBarContainerView(content: {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("Hello World!")
                .foregroundStyle(Color.white)
                .customNavBarItems(model: NavBarModel(isBackButton: false,
                                                          title: "CustomNavBarContainerView",
                                                          subTitle: "New Sub",
                                                          backgroundColor: .red))
        }
    })
}
