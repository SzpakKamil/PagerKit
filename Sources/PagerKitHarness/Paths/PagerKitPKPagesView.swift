//
//  PagerKitPKPagesView.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 12/11/2025.
//

import HarnessKit
import SwiftUI

extension PagerKitHK {
    public enum PKPagesView: Int, PathFolder {
        public typealias ParentSection = PagerKitHK
        public static let name = "PKPagesView"
        
        public static var folders: [any PathFolder.Type] { [] }
        public static let options: [any PathFolder] = [
            PKPagesViewControlFooterAlignment,
            PKPagesViewControlPadding,
            PKPagesViewControlIndicatorAlignment,
            PKPagesViewControlIndicatorCurrentIndicatorImage,
            PKPagesViewControlIndicatorCurrentIndicatorTintColor,
            PKPagesViewControlIndicatorHidesForSignlePage,
            PKPagesViewControlIndicatorImage,
            PKPagesViewControlIndicatorPreferredCurrentIndicatorImage,
            PKPagesViewControlIndicatorPreferredIndicatorImage,
            PKPagesViewControlIndicatorTintColor,
        ]
        
        case PKPagesViewControlFooterAlignment
        case PKPagesViewControlPadding
        case PKPagesViewControlIndicatorAlignment
        case PKPagesViewControlIndicatorCurrentIndicatorImage
        case PKPagesViewControlIndicatorCurrentIndicatorTintColor
        case PKPagesViewControlIndicatorHidesForSignlePage
        case PKPagesViewControlIndicatorImage
        case PKPagesViewControlIndicatorPreferredCurrentIndicatorImage
        case PKPagesViewControlIndicatorPreferredIndicatorImage
        case PKPagesViewControlIndicatorTintColor

        #if canImport(PagerKit)
        @ViewBuilder
        public var view: some View{
            switch self {
                case .PKPagesViewControlFooterAlignment:
                    PKPagesViewControlFooterAlignmentView()
                case .PKPagesViewControlPadding:
                    PKPagesViewControlPaddingView()
                case .PKPagesViewControlIndicatorAlignment:
                    PKPagesViewControlIndicatorAlignmentView()
                case .PKPagesViewControlIndicatorCurrentIndicatorImage:
                    PKPagesViewControlIndicatorCurrentIndicatorImageView()
                case .PKPagesViewControlIndicatorCurrentIndicatorTintColor:
                    PKPagesViewControlIndicatorCurrentIndicatorTintColorView()
                case .PKPagesViewControlIndicatorHidesForSignlePage:
                    PKPagesViewControlIndicatorHidesForSignlePageView()
                case .PKPagesViewControlIndicatorImage:
                    PKPagesViewControlIndicatorImageView()
                case .PKPagesViewControlIndicatorPreferredCurrentIndicatorImage:
                    PKPagesViewControlIndicatorPreferredCurrentIndicatorImageView()
                case .PKPagesViewControlIndicatorPreferredIndicatorImage:
                    PKPagesViewControlIndicatorPreferredIndicatorImageView()
                case .PKPagesViewControlIndicatorTintColor:
                    PKPagesViewControlIndicatorTintColorView()
            }
        }
        #endif
    }
}
