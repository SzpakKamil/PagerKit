//
//  PKPagesViewControlIndicatorCurrentIndicatorImageView.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 27/10/2025.
//

import HarnessKit
import PagerKit
import SwiftUI

struct PKPagesViewControlIndicatorCurrentIndicatorImageView: View {
    var body: some View{
        HarnessPreview{ isOn in
            PKPagesView{
                PKPage { Text("Page 1").font(.title) }
                PKPage { Text("Page 2").font(.title) }
            }
            #if os(macOS) || os(watchOS)
            .pkPageControlIndicatorPreferredIndicatorImage(image: Image(systemName: "star"))
            .pkPageControlIndicatorCurrentIndicator(Image(systemName: "car"), forPage: 1)
            #else
            .pkPageControlIndicatorPreferredIndicatorImage(image: UIImage(systemName: "star"))
            .pkPageControlIndicatorCurrentIndicator(UIImage(systemName: "car"), forPage: 1)
            #endif
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
    PKPagesViewControlIndicatorCurrentIndicatorImageView()
}
