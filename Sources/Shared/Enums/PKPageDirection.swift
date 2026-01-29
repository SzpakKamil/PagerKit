//
//  PKPageDirection.swift
//  PagerKit
//
//  Created by Kamil Szpak on 07/10/2025.
//

import SwiftUI

public enum PKPageDirection{
    case forward
    case reverse
    
#if !(os(macOS) || os(watchOS))
    var uiKitValue: UIPageViewController.NavigationDirection{
        switch self {
            case .forward:
                return .forward
            case .reverse:
                return .reverse
        }
    }
    static func caseFor(uiKitValue: UIPageViewController.NavigationDirection) -> Self{
        switch uiKitValue {
            case .forward:
                return .forward
            case .reverse:
                return .reverse
            @unknown default:
                return .forward
        }
    }
#endif
}
