//
//  PKPagesViewControlIndicatorCurrentIndicatorTintColorView.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 27/10/2025.
//

import HarnessKit
import PagerKit
import SwiftUI

struct PKPagesViewControlIndicatorCurrentIndicatorTintColorView: View {
    var body: some View{
        HarnessPreview{ isOn in
            PKPagesView{
                PKPage { Text("Page 1").font(.title) }
                PKPage { Text("Page 2").font(.title) }
            }
            .pkPageControlIndicatorCurrentIndicatorTintColor(isOn ? .red : .primary)
            .pkCurrentPageIndex(index: .constant(isOn ? 1 : 0))
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
    PKPagesViewControlIndicatorCurrentIndicatorTintColorView()
}
