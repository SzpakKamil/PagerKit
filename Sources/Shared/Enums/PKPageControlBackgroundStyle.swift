//
//  PKPageControlBackgroundStyle.swift
//  PagerKit
//
//  Created by Kamil Szpak on 07/10/2025.
//

import SwiftUI

public enum PKPageControlBackgroundStyle: Int, Hashable, Equatable, Identifiable{
    case automatic
    case minimal
    case prominent
    
    public var id: Int{
        self.rawValue
    }
    
    #if !(os(macOS) || os(watchOS))
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
