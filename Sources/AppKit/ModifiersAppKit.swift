//
//  TKPage.swift
//  TabKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

#if canImport(AppKit)
import SwiftUI

public extension TKPagesView{
    func tkPageControlHidesForSignlePage(_ condition: Bool) -> Self{
        var copy = self
        copy.pageControlStyle.hidesForSinglePage = condition
        return copy
    }
    func tkPageNavigationOrientation(_ orientation: Axis) -> Self{
        let copy = self
        copy.options.orientationRaw = orientation
        return copy
    }
    

    func tkPageControlAlignment(_ alignment: Alignment = .bottom) -> Self{
        var copy = self
        copy.pageControlStyle.alignment = alignment
        return copy
    }
    func tkPageControlAlignment(spacing: CGFloat, alignment: Alignment = .bottom) -> Self{
        var copy = self
        copy.pageControlStyle.alignment = alignment
        copy.pageControlStyle.spacing = spacing
        return copy
    }
    
    func tkPageControlIndicatorTintColor(_ color: Color?) -> Self{
        var copy = self
        copy.pageControlStyle.indicatorTintColor = color
        return copy
    }
    func tkPageControlAllowsContinuousInteraction(_ condition: Bool) -> Self{
        var copy = self
        copy.pageControlStyle.allowsContinuousInteraction = condition
        return copy
    }
    func tkPageControlCurrentIndicatorTintColor(_ color: Color?) -> Self{
        var copy = self
        copy.pageControlStyle.currentPageIndicatorTintColor = color
        return copy
    }
    func tkPageControlHidden(_ condition: Bool) -> Self{
        var copy = self
        copy.pageControlStyle.hidden = condition
        return copy
    }
    func tkPageControlBackgroundStyle(_ style: TKPageControlStyle.BackgroundStyle = .automatic) -> Self{
        var copy = self
        copy.pageControlStyle.backgroundStyle = style
        return copy
    }
    func tkPageControlPreferredIndicatorImage(image: NSImage?) -> Self{
        var copy = self
        copy.pageControlStyle.preferredIndicatorImage = image
        return copy
    }
    func tkPageControlIndicator(_ image: NSImage?, forPage: Int) -> Self{
        var copy = self
        copy.pageControlStyle.indicatorImage[forPage] = image
        return copy
    }
    func tkPageControlCurrentIndicator(_ image: NSImage?, forPage: Int) -> Self{
        var copy = self
        copy.pageControlStyle.currentIndicatorImage[forPage] = image
        return copy
    }
    @available(iOS 16.0, *)
    func tkPageControlPreferredCurrentPageIndicatorImage(image: NSImage?) -> Self{
        var copy = self
        copy.pageControlStyle.preferredCurrentPageIndicatorImage = image
        return copy
    }
    @available(iOS 16.0, tvOS 16.0, *)
    func tkPageControlDirection(_ direction: TKPageControlStyle.Direction) -> Self{
        var copy = self
        copy.pageControlStyle.direction = direction
        return copy
    }
    func tkCurrentPageIndex(index: Binding<Int>) -> Self{
        var copy = self
        copy.customSelectedIndex = index
        return copy
    }
    
    func tkOnManualPageChange(action: @escaping ( _ currentIndex: Int,_ direction: TKPageOptions.Direction) -> Void) -> Self{
        let copy = self
        copy.options.pageManualChangeDirectionFunction = action
        return copy
    }
    
    func tkOnManualPageChange(action: @escaping (_ previousIndex: Int,_ currentIndex: Int) -> Void) -> Self{
        let copy = self
        copy.options.pageManualChangeIndexFunction = action
        return copy
    }
    
    func tkOnAutoPageChange(action: @escaping ( _ currentIndex: Int,_ direction: TKPageOptions.Direction) -> Void) -> Self{
        let copy = self
        copy.options.pageAutoChangeDirectionFunction = action
        return copy
    }
    
    func tkOnAutoPageChange(action: @escaping (_ previousIndex: Int,_ currentIndex: Int) -> Void) -> Self{
        let copy = self
        copy.options.pageAutoChangeIndexFunction = action
        return copy
    }
    func tkOnTransitionStart(action: @escaping (_ previousIndex: Int,_ currentIndex: Int) -> Void) -> Self{
        let copy = self
        copy.options.transitionStartFunction = action
        return copy
    }
    func tkOnTransitionEnd(action: @escaping (_ previousIndex: Int,_ currentIndex: Int) -> Void) -> Self{
        let copy = self
        copy.options.transitionEndFunction = action
        return copy
    }
}

public extension TKPage{
    @available(iOS 17.0, tvOS 17.0, *)
    func tkPageDuration(_ duration: Double?) -> Self {
        var copy = self
        if let duration{
            copy.progress = {
                return duration
            }
        }
        return copy
    }
    @available(iOS 17.0, tvOS 17.0, *)
    func tkPageProgress(_ progress: @escaping () -> Double?) -> Self {
        var copy = self
        copy.progress = progress
        return copy
    }
}
#endif
