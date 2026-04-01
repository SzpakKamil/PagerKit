//
//  IfExtension.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 23/02/2026.
//

import HarnessKit
import SwiftUI

extension View {
    @ViewBuilder func `if`<Transform: View>(@ViewBuilder transform: (Self) -> Transform) -> some View {
        transform(self)
    }
}

extension View{
    @ViewBuilder
    func versionSpecificNavigationButtonHidden() -> some View{
        if #available(macOS 13.0, *){
            self
                .navigationBarBackButtonHidden()
        }else{
            self
        }
    }
}

extension View{
    @ViewBuilder
    func versionSpecificFocusable() -> some View{
        #if os(tvOS)
        if #available(tvOS 17.0, *){
            self
                .focusable(false)
        }else{
            self
        }
        #else
        self
        #endif
    }
}
