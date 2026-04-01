//
//  PagerKitPKPage.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 12/11/2025.
//

import HarnessKit
import SwiftUI

extension PagerKitHK {
    public enum PKPage: Int, PathFolder {
        public typealias ParentSection = PagerKitHK
        public static let name = "PKPage"
        
        public static var folders: [any PathFolder.Type] { [] }
        public static let options: [any PathFolder] = [
            PKPageCurrentIndicatorImage,
            PKPageFooter,
            PKPageIndicatorImage
        ]
        
        case PKPageFooter
        case PKPageCurrentIndicatorImage
        case PKPageIndicatorImage

        #if canImport(PagerKit)
        @ViewBuilder
        public var view: some View{
            switch self {
                case .PKPageCurrentIndicatorImage:
                    PKPageCurrentIndicatorImageView()
                case .PKPageFooter:
                    PKPageFooterView()
                case .PKPageIndicatorImage:
                    PKPageIndicatorImageView()
            }
        }
        #endif
    }
}
