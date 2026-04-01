//
//  PKPageControlIndicatorBackgroundStyleView.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 27/10/2025.
//

import HarnessKit
import PagerKit
import SwiftUI

struct PKPageControlIndicatorBackgroundStyleView: View {
    var body: some View{
        HarnessPreview([PKPageControlIndicatorBackgroundStyle.automatic, .prominent, .minimal]){ variant in
            PKPagesView{
                PKPage { Text("Page 1").font(.title) }
                PKPage { Text("Page 2").font(.title) }
                PKPage { Text("Page 3").font(.title) }
            }
            .pkPageControlIndicatorBackgroundStyle(variant)
            .versionSpecificFocusable()
            .id(variant)
        }
        #if os(macOS)
        .windowSize(.custom(width: 800, height: 600))
        #endif
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    PKPageControlIndicatorBackgroundStyleView()
}
