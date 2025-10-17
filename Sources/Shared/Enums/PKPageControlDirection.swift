//
//  PKPageControlDirection.swift
//  PagerKit
//
//  Created by Kamil Szpak on 07/10/2025.
//

import SwiftUI

public enum PKPageControlDirection{
    case natural
    case leftToRight
    case rightToLeft
    case topToBottom
    case bottomToTop
    
#if !(os(macOS) || os(watchOS))
    @available(iOS 16.0, tvOS 16.0, *)
    var uiKitValue: UIPageControl.Direction{
        switch self {
            case .natural:
                return .natural
            case .leftToRight:
                return .leftToRight
            case .rightToLeft:
                return .rightToLeft
            case .topToBottom:
                return .topToBottom
            case .bottomToTop:
                return .bottomToTop
        }
    }
    @available(iOS 16.0, tvOS 16.0, *)
    static func caseFor(uiKitValue: UIPageControl.Direction) -> Self{
        switch uiKitValue {
            case .natural:
                return .natural
            case .leftToRight:
                return .leftToRight
            case .rightToLeft:
                return .rightToLeft
            case .topToBottom:
                return .topToBottom
            case .bottomToTop:
                return .bottomToTop
            @unknown default:
                return .natural
        }
    }
#endif
}
