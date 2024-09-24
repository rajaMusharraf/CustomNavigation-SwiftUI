//
//  CustomNavBarPreferenceKeys.swift
//  Q3
//
//  Created by Musharaf on 23/09/2024.
//

import Foundation
import SwiftUI

struct CustomNavBarModelPreferenceKey: PreferenceKey {
    static var defaultValue: NavBarModel = NavBarModel(isBackButton: true,
                                            title: "Default",
                                            subTitle: "default",
                                            backgroundColor: .gray)
    
    static func reduce(value: inout NavBarModel, nextValue: () -> NavBarModel) {
        value = nextValue()
    }
}

extension View {
    func customNavBarItems(model: NavBarModel) -> some View {
        print("+++++++ \(model) +++++++")
        return preference(key: CustomNavBarModelPreferenceKey.self, value: model)
    }
}
