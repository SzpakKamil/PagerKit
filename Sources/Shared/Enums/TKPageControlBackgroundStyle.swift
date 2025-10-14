//
//  TKPageControlBackgroundStyle.swift
//  TabKit
//
//  Created by Kamil Szpak on 07/10/2025.
//

import SwiftUI

public enum TKPageControlBackgroundStyle{
    case automatic
    case minimal
    case prominent
    
    #if canImport(UIKit)
    var uiKitValue: UIPageControl.BackgroundStyle{
        switch self{
            case .minimal:
                return .minimal
            case .prominent:
                return .prominent
            case .automatic:
                return .automatic
        }
    }
    static func caseFor(uiKitValue: UIPageControl.BackgroundStyle) -> Self{
        switch uiKitValue{
            case .minimal:
                return .minimal
            case .prominent:
                return .prominent
            case .automatic:
                return .automatic
            @unknown default:
                return .automatic
        }
    }
    #endif
}
