//
//  PKPagesViewControlIndicatorAlignmentView.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 27/10/2025.
//

import HarnessKit
import PagerKit
import SwiftUI

struct PKPagesViewControlIndicatorAlignmentView: View {
    var body: some View{
        let alignments = [Alignment.topLeading, .top, .topTrailing, .leading, .center, .trailing, .bottomLeading, .bottom, .bottomTrailing]
        HarnessPreview(alignments.indices.sorted()){ variant in
            PKPagesView{
                PKPage { Text("Page 1").font(.title) }
                PKPage { Text("Page 2").font(.title) }
                PKPage { Text("Page 3").font(.title) }
            }
            .pkPageControlIndicatorAlignment(alignments[variant])
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
    PKPagesViewControlIndicatorAlignmentView()
}
