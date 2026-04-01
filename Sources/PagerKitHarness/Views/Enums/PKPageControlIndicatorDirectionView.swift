//
//  PKPageControlIndicatorDirectionView.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 27/10/2025.
//

import HarnessKit
import PagerKit
import SwiftUI

struct PKPageControlIndicatorDirectionView: View {
    @State private var showAlert: Bool = false
    @State private var direction: PKPageControlIndicatorDirection = .natural
    var body: some View{
        HarnessPreview([PKPageControlIndicatorDirection.natural, .leftToRight, .rightToLeft, .topToBottom, .bottomToTop]){ variant in
            if #available(iOS 16.0, tvOS 16.0, *){
                PKPagesView{
                    PKPage { Text("Page 1").font(.title) }
                    PKPage { Text("Page 2").font(.title) }
                    PKPage { Text("Page 3").font(.title) }
                }
                .pkPageControlIndicatorDirection(variant)
                .versionSpecificFocusable()
                .id(variant)
            }
        }
        #if os(macOS)
        .windowSize(.custom(width: 800, height: 600))
        #endif
        .versionSpecificNavigationButtonHidden()
    }
}

#Preview {
    PKPageControlIndicatorDirectionView()
}
