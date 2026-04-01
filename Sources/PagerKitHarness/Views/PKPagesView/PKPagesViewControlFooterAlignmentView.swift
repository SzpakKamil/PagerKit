//
//  PKPagesViewControlFooterAlignmentView.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 27/10/2025.
//

import HarnessKit
import PagerKit
import SwiftUI

struct PKPagesViewControlFooterAlignmentView: View {
    var body: some View{
        let alignments = [Alignment.topLeading, .top, .topTrailing, .leading, .center, .trailing, .bottomLeading, .bottom, .bottomTrailing]
        HarnessPreview(alignments.indices.sorted()){ variant in
            PKPagesView{
                PKPage { Text("Page 1").font(.title) }
                    .pkPageFooter{Text("Footer")}
            }
            .pkPageControlFooterAlignment(alignments[variant])
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
    PKPagesViewControlFooterAlignmentView()
}
