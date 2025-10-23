//
//  SwiftUIView.swift
//  PagerKit
//
//  Created by Kamil Szpak on 01/10/2025.
//

import SwiftUI

struct PKPageControlStyle{
    var hidden: Bool
    var hidesForSinglePage: Bool
    var indicatorTintColor: Color?
    var spacing: CGFloat
    var currentPageIndicatorTintColor: Color?
    var backgroundStyle: PKPageControlBackgroundStyle
    var direction: PKPageControlDirection = .natural
    #if !(os(macOS))
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
    
    #if !(os(macOS) || os(watchOS))
    @available(iOS 16.0, tvOS 16.0, *)
    func getDirection() -> UIPageControl.Direction{
        return direction.uiKitValue
    }
    var indicatorTintUIColor: UIColor?{
        if let indicatorTintColor{
            return UIColor(indicatorTintColor)
        }else{
            return UIColor(Color.secondary)
        }
    }
    var currentPageIndicatorTintUIColor: UIColor?{
        if let currentPageIndicatorTintColor{
            return UIColor(currentPageIndicatorTintColor)
        }else{
            return UIColor(Color.primary)
        }
    }
    #elseif os(watchOS)
    var indicatorTintUIColor: UIColor?{
        if let indicatorTintColor{
            return UIColor(indicatorTintColor)
        }else{
            return nil
        }
    }
    var currentPageIndicatorTintUIColor: UIColor?{
        if let currentPageIndicatorTintColor{
            return UIColor(currentPageIndicatorTintColor)
        }else{
            return nil
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
        #if os(watchOS)
        self.spacing = 8
        #else
        self.spacing = 12
        #endif
        
        self.indicatorImage = [:]
        self.currentIndicatorImage = [:]
        self.alignment = .bottom
    }

}
