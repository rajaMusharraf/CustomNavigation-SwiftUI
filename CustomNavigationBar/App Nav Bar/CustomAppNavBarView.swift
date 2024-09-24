//
//  CustomAppNavBarView.swift
//  Q3
//
//  Created by Musharaf on 20/09/2024.
//

import SwiftUI

struct CustomAppNavBarView: View {
    @Environment(\.presentationMode) var presentationMode
    var navBar: NavBarModel
    
    var body: some View {
        HStack {
            if navBar.isBackButton {
                backButton
            }
            Spacer()
            titleSection
            Spacer()
            if navBar.isBackButton {
                backButton
                    .opacity(0)
            }
        }
        .padding()
        .font(.headline)
        .background(navBar.backgroundColor.ignoresSafeArea(edges: .top))
        .foregroundColor(.white)
    }
}

#Preview {
    VStack{
        CustomAppNavBarView(navBar: NavBarModel(backgroundColor: .red))
        Spacer()
    }
    
}

extension CustomAppNavBarView {
    private var backButton: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.left")
        }
    }
    
    private var titleSection: some View {
        VStack(spacing: 4) {
            Text(navBar.title)
                .font(.title)
                .fontWeight(.semibold)
            Text(navBar.subTitle ?? "")
        }
    }
}

struct NavBarModel : Equatable {
    var isBackButton: Bool = true
    var title: String = ""
    var subTitle: String? = ""
    var backgroundColor: Color = .blue
}
