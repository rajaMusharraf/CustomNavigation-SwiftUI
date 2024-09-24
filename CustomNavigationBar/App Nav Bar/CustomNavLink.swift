//
//  CustomNavLink.swift
//  Q3
//
//  Created by Musharaf on 23/09/2024.
//

import SwiftUI

    struct CustomNavLink<Label: View, Destination: View>: View {
        let destination: Destination
        let label: Label
        
        init(destination: Destination, @ViewBuilder label: () -> Label) {
            self.destination = destination
            self.label = label()
        }
        
        var body: some View {
            NavigationLink(
                destination:
                    CustomNavBarContainerView(content: {
                        destination
                    })
                    .navigationBarHidden(true)
            ) {
                label
            }
        }
}

#Preview {
    CustomNavView {
        CustomNavLink(destination: Text("Destination")) {
            VStack {
                Text("Click Me")
                Spacer()
            }
        }
    }
}
