//
//  PagerKitEnums.swift
//  PagerKitHarness
//
//  Created by Kamil Szpak on 12/11/2025.
//

import HarnessKit
import SwiftUI

extension PagerKitHK {
    public enum Enums: Int, PathFolder {
        public typealias ParentSection = PagerKitHK
        public static let name = "Enums"
        
        public static let options: [any PathFolder] = [
            PKPageControlIndicatorBackgroundStyle,
            PKPageControlIndicatorDirection
        ]
        public static var folders: [any PathFolder.Type] { [] }
        
        case PKPageControlIndicatorBackgroundStyle
        case PKPageControlIndicatorDirection
        
        #if canImport(PagerKit)
        @ViewBuilder
        public var view: some View{
            switch self {
                case .PKPageControlIndicatorBackgroundStyle:
                    PKPageControlIndicatorBackgroundStyleView()
                case .PKPageControlIndicatorDirection:
                    PKPageControlIndicatorDirectionView()
            }
        }
        #endif
        
    }
}
