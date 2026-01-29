//
//  PKPage.swift
//  PagerKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

import SwiftUI


public struct PKPage {
    let content: AnyView
    #if !(os(macOS) || os(watchOS))
    let hostingViewController: UIHostingController<AnyView>
    #endif
    var progress: (() -> Any)?
    
    
    public init(@ViewBuilder content: () -> some View) {
        self.content = AnyView(content())
        #if !(os(macOS) || os(watchOS))
        self.hostingViewController = UIHostingController(rootView: AnyView(content()))
        #endif
        self.progress = nil
    }
}


