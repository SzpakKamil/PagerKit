//
//  TKPage.swift
//  TabKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

import SwiftUI


public struct TKPage {
    let content: AnyView
    #if canImport(UIKit)
    let hostingViewController: UIHostingController<AnyView>
    #endif
    var progress: (() -> Any)?
    
    
    public init(@ViewBuilder content: () -> some View) {
        self.content = AnyView(content())
        #if canImport(UIKit)
        self.hostingViewController = UIHostingController(rootView: AnyView(content()))
        #endif
        self.progress = nil
    }
}


