//
//  PKPageFooterView.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 27/10/2025.
//

import HarnessKit
import PagerKit
import SwiftUI

struct PKPageFooterView: View {
    var body: some View{
        HarnessPreview{ isOn in
            PKPagesView{
                PKPage { Text("Page 1").font(.title) }
                    .pkPageFooter{
                        if isOn{
                            Text("This is Page 1")
                        }
                    }
                PKPage { Text("Page 2").font(.title) }
                    .pkPageFooter{
                        if isOn{
                            Text("This is Page 2")
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
    PKPageFooterView()
}
