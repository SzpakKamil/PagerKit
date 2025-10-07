//
//  SwiftUIView.swift
//  TabKit
//
//  Created by Kamil Szpak on 01/10/2025.
//

import SwiftUI


public struct TKPageControlStyle{
    var hidden: Bool
    var hidesForSinglePage: Bool
    var indicatorTintColor: Color?
    var spacing: CGFloat
    var currentPageIndicatorTintColor: Color?
    var backgroundStyle: BackgroundStyle
    var direction: Direction = .natural
    #if canImport(UIKit)
    var indicatorImage: [Int: UIImage?]
    var currentIndicatorImage: [Int: UIImage?]
    var preferredIndicatorImage: UIImage?
    var preferredCurrentPageIndicatorImage: UIImage?
    #else
    var indicatorImage: [Int: NSImage?]
    var currentIndicatorImage: [Int: NSImage?]
    var preferredIndicatorImage: NSImage?
    var preferredCurrentPageIndicatorImage: NSImage?
    #endif

    var allowsContinuousInteraction: Bool
    var alignment: Alignment
    
    #if canImport(UIKit)
    @available(iOS 16.0, tvOS 16.0, *)
    func getDirection() -> UIPageControl.Direction{
        return direction.uiKitValue
    }
    var indicatorTintUIColor: UIColor?{
        if let indicatorTintColor{
            UIColor(indicatorTintColor)
        }else{
            nil
        }
    }
    var currentPageIndicatorTintUIColor: UIColor?{
        if let currentPageIndicatorTintColor{
            UIColor(currentPageIndicatorTintColor)
        }else{
            nil
        }
    }
    #else
    var indicatorTintUIColor: NSColor?{
        if let indicatorTintColor{
            NSColor(indicatorTintColor)
        }else{
            nil
        }
    }
    var currentPageIndicatorTintUIColor: NSColor?{
        if let currentPageIndicatorTintColor{
            NSColor(currentPageIndicatorTintColor)
        }else{
            nil
        }
    }
    #endif

    init() {
        self.hidden = false
        self.backgroundStyle = .automatic
        self.hidesForSinglePage = true
        self.indicatorTintColor = nil
        self.currentPageIndicatorTintColor = nil
        self.allowsContinuousInteraction = true
        self.preferredIndicatorImage = nil
        self.direction = .natural
        self.spacing = 12
        
        self.indicatorImage = [:]
        self.currentIndicatorImage = [:]
        self.alignment = .bottom
    }

}
