//
//  SwiftUIView.swift
//  TabKit
//
//  Created by Kamil Szpak on 01/10/2025.
//

import SwiftUI

struct TKPageControlStyle{
    var hidden: Bool
    var hidesForSinglePage: Bool
    var indicatorTintColor: Color?
    var spacing: CGFloat
    var currentPageIndicatorTintColor: Color?
    var backgroundStyle: UIPageControl.BackgroundStyle
    var direction: Int?
    var indicatorImage: [Int: UIImage?]
    var currentIndicatorImage: [Int: UIImage?]
    var preferredIndicatorUIImage: UIImage?
    var preferredCurrentPageIndicatorImage: UIImage?
    var allowsContinuousInteraction: Bool
    var alignment: Alignment
    
    @available(iOS 16.0, tvOS 16.0, *)
    func getDirection() -> UIPageControl.Direction{
        if let direction{
            return UIPageControl.Direction(rawValue: direction) ?? .natural
        }else{
            return .natural
        }
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
    
    public init(
        hidden: Bool = false,
        backgroundStyle: UIPageControl.BackgroundStyle = .automatic,
        allowsContinuousInteraction: Bool = true,
        hidesForSinglePage: Bool = true,
        indicatorTintColor: Color? = nil,
        spacing: CGFloat = 12,
        currentPageIndicatorTintColor: Color? = nil,
        preferredIndicatorUIImage: UIImage? = nil,
        indicatorImage: [Int: UIImage?] = [:],
        alignment: Alignment = .bottom
    ) {
        self.hidden = hidden
        self.backgroundStyle = backgroundStyle
        self.hidesForSinglePage = hidesForSinglePage
        self.indicatorTintColor = indicatorTintColor
        self.currentPageIndicatorTintColor = currentPageIndicatorTintColor
        self.allowsContinuousInteraction = allowsContinuousInteraction
        self.preferredIndicatorUIImage = preferredIndicatorUIImage
        self.direction = nil
        self.spacing = spacing
        self.indicatorImage = indicatorImage
        self.currentIndicatorImage = [:]
        self.alignment = alignment
    }
    
    @available(iOS 16.0, tvOS 16.0, *)
    public init(
        hidden: Bool = false,
        backgroundStyle: UIPageControl.BackgroundStyle = .automatic,
        allowsContinuousInteraction: Bool = true,
        hidesForSinglePage: Bool = true,
        indicatorTintColor: Color? = nil,
        spacing: CGFloat = 12,
        direction: UIPageControl.Direction = .natural,
        currentPageIndicatorTintColor: Color? = nil,
        preferredIndicatorUIImage: UIImage? = nil,
        preferredCurrentPageIndicatorImage: UIImage? = nil,
        indicatorImage: [Int: UIImage?] = [:],
        currentIndicatorImage: [Int: UIImage?] = [:],
        alignment: Alignment = .bottom
    ) {
        self.hidden = hidden
        self.backgroundStyle = backgroundStyle
        self.hidesForSinglePage = hidesForSinglePage
        self.indicatorTintColor = indicatorTintColor
        self.currentPageIndicatorTintColor = currentPageIndicatorTintColor
        self.allowsContinuousInteraction = allowsContinuousInteraction
        self.preferredIndicatorUIImage = preferredIndicatorUIImage
        self.preferredCurrentPageIndicatorImage = preferredCurrentPageIndicatorImage
        self.direction = direction.rawValue
        self.indicatorImage = indicatorImage
        self.currentIndicatorImage = currentIndicatorImage
        self.alignment = alignment
        self.spacing = spacing
    }
}

