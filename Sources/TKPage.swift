//
//  TKPage.swift
//  TabKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

import SwiftUI

public struct TKPage {
    let content: AnyView
    let hostingViewController: UIHostingController<AnyView>
    var progress: (() -> Any)?
    
    
    public init(@ViewBuilder content: () -> some View) {
        self.content = AnyView(content())
        self.hostingViewController = UIHostingController(rootView: AnyView(content()))
        self.progress = nil
    }
}


