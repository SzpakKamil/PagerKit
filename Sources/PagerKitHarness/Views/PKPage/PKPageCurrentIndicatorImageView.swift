//
//  PKPageCurrentIndicatorImageView.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 27/10/2025.
//

import HarnessKit
import PagerKit
import SwiftUI

struct PKPageCurrentIndicatorImageView: View {
    var body: some View{
        HarnessPreview{ isOn in
            PKPagesView{
                if isOn{
                    PKPage { Text("Page 1").font(.title) }
                        #if os(macOS) || os(watchOS)
                        .pkPageCurrentIndicatorImage(image:  Image(systemName: "star"))
                        #else
                        .pkPageCurrentIndicatorImage(image:  UIImage(systemName: "star"))
                        #endif
                    PKPage { Text("Page 2").font(.title) }
                        #if os(macOS) || os(watchOS)
                        .pkPageCurrentIndicatorImage(image:  Image(systemName: "car"))
                        #else
                        .pkPageCurrentIndicatorImage(image:  UIImage(systemName: "car"))
                        #endif
                }else{
                    PKPage { Text("Page 1").font(.title) }
                    PKPage { Text("Page 2").font(.title) }
                }
            }
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
    PKPageCurrentIndicatorImageView()
}
