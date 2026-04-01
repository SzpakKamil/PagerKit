//
//  PKPagesViewControlPaddingView.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 27/10/2025.
//

import HarnessKit
import PagerKit
import SwiftUI

struct PKPagesViewControlPaddingView: View {
    @State private var showAlert: Bool = false
    @State private var style: Bool = false
    var body: some View{
        HarnessPreview{ isOn in
            PKPagesView{
                PKPage { Text("Page 1").font(.title) }
                PKPage { Text("Page 2").font(.title) }
                PKPage { Text("Page 3").font(.title) }
            }
            .pkPageControlFooterAlignment(.bottomLeading)
            .pkPageControlIndicatorAlignment(.bottomTrailing)
            .pkPageControlPadding(.horizontal, isOn ? 20 : 0)
            .versionSpecificFocusable()
            .id(isOn)
        }
        #if os(macOS)
        .windowSize(.custom(width: 800, height: 600))
        #endif
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    PKPagesViewControlPaddingView()
}
