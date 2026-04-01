//
//  PKPagesViewControlIndicatorImageView.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 27/10/2025.
//

import HarnessKit
import PagerKit
import SwiftUI

struct PKPagesViewControlIndicatorImageView: View {
    var body: some View{
        HarnessPreview{ isOn in
            Group{
                if isOn{
                    PKPagesView{
                        PKPage { Text("Page 1").font(.title) }
                        PKPage { Text("Page 2").font(.title) }
                        PKPage { Text("Page 3").font(.title) }
                    }
                    #if os(macOS) || os(watchOS)
                    .pkPageControlIndicator(Image(systemName: "car"), forPage: 2)
                    #else
                    .pkPageControlIndicator(UIImage(systemName: "car"), forPage: 2)
                    #endif
                }else{
                    PKPagesView{
                        PKPage { Text("Page 1").font(.title) }
                        PKPage { Text("Page 2").font(.title) }
                        PKPage { Text("Page 3").font(.title) }
                    }
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
    PKPagesViewControlIndicatorImageView()
}
