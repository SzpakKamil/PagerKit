//
//  PKPage.swift
//  PagerKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

#if os(macOS) || os(watchOS)
import SwiftUI

public extension PKPagesView{
    func pkPageControlHidesForSignlePage(_ condition: Bool) -> Self{
        var copy = self
        copy.pageControlStyle.hidesForSinglePage = condition
        return copy
    }
    func pkPageNavigationOrientation(_ orientation: Axis) -> Self{
        let copy = self
        copy.options.orientationRaw = orientation
        return copy
    }
    

    func pkPageControlAlignment(_ alignment: Alignment = .bottom) -> Self{
        var copy = self
        copy.pageControlStyle.alignment = alignment
        return copy
    }
    func pkPageControlAlignment(spacing: CGFloat, alignment: Alignment = .bottom) -> Self{
        var copy = self
        copy.pageControlStyle.alignment = alignment
        copy.pageControlStyle.spacing = spacing
        return copy
    }
    
    func pkPageControlIndicatorTintColor(_ color: Color?) -> Self{
        var copy = self
        copy.pageControlStyle.indicatorTintColor = color
        return copy
    }
    func pkPageControlAllowsContinuousInteraction(_ condition: Bool) -> Self{
        var copy = self
        copy.pageControlStyle.allowsContinuousInteraction = condition
        return copy
    }
    func pkPageControlCurrentIndicatorTintColor(_ color: Color?) -> Self{
        var copy = self
        copy.pageControlStyle.currentPageIndicatorTintColor = color
        return copy
    }
    func pkPageControlHidden(_ condition: Bool) -> Self{
        var copy = self
        copy.pageControlStyle.hidden = condition
        return copy
    }
    func pkPageControlBackgroundStyle(_ style: PKPageControlBackgroundStyle = .automatic) -> Self{
        var copy = self
        copy.pageControlStyle.backgroundStyle = style
        return copy
    }
    #if os(watchOS)
    func pkPageControlPreferredIndicatorImage(image: UIImage?) -> Self{
        var copy = self
        copy.pageControlStyle.preferredIndicatorImage = image
        return copy
    }
    func pkPageControlIndicator(_ image: UIImage?, forPage: Int) -> Self{
        var copy = self
        copy.pageControlStyle.indicatorImage[forPage] = image
        return copy
    }
    func pkPageControlCurrentIndicator(_ image: UIImage?, forPage: Int) -> Self{
        var copy = self
        copy.pageControlStyle.currentIndicatorImage[forPage] = image
        return copy
    }
    @available(iOS 16.0, tvOS 16.0, *)
    func pkPageControlPreferredCurrentPageIndicatorImage(image: UIImage?) -> Self{
        var copy = self
        copy.pageControlStyle.preferredCurrentPageIndicatorImage = image
        return copy
    }
    #else
    func pkPageControlPreferredIndicatorImage(image: NSImage?) -> Self{
        var copy = self
        copy.pageControlStyle.preferredIndicatorImage = image
        return copy
    }
    func pkPageControlIndicator(_ image: NSImage?, forPage: Int) -> Self{
        var copy = self
        copy.pageControlStyle.indicatorImage[forPage] = image
        return copy
    }
    func pkPageControlCurrentIndicator(_ image: NSImage?, forPage: Int) -> Self{
        var copy = self
        copy.pageControlStyle.currentIndicatorImage[forPage] = image
        return copy
    }
    @available(iOS 16.0, tvOS 16.0, *)
    func pkPageControlPreferredCurrentPageIndicatorImage(image: NSImage?) -> Self{
        var copy = self
        copy.pageControlStyle.preferredCurrentPageIndicatorImage = image
        return copy
    }
    #endif
    @available(iOS 16.0, tvOS 16.0, *)
    func pkPageControlDirection(_ direction: PKPageControlDirection) -> Self{
        var copy = self
        copy.pageControlStyle.direction = direction
        return copy
    }
    func pkCurrentPageIndex(index: Binding<Int>) -> Self{
        var copy = self
        copy.customSelectedIndex = index
        return copy
    }
    
    func pkOnManualPageChange(action: @escaping ( _ currentIndex: Int,_ direction: PKPageDirection) -> Void) -> Self{
        let copy = self
        copy.options.pageManualChangeDirectionFunction = action
        return copy
    }
    
    func pkOnManualPageChange(action: @escaping (_ previousIndex: Int,_ currentIndex: Int) -> Void) -> Self{
        let copy = self
        copy.options.pageManualChangeIndexFunction = action
        return copy
    }
    
    func pkOnAutoPageChange(action: @escaping ( _ currentIndex: Int,_ direction: PKPageDirection) -> Void) -> Self{
        let copy = self
        copy.options.pageAutoChangeDirectionFunction = action
        return copy
    }
    
    func pkOnAutoPageChange(action: @escaping (_ previousIndex: Int,_ currentIndex: Int) -> Void) -> Self{
        let copy = self
        copy.options.pageAutoChangeIndexFunction = action
        return copy
    }
    func pkOnTransitionStart(action: @escaping (_ previousIndex: Int,_ currentIndex: Int) -> Void) -> Self{
        let copy = self
        copy.options.transitionStartFunction = action
        return copy
    }
    func pkOnTransitionEnd(action: @escaping (_ previousIndex: Int,_ currentIndex: Int) -> Void) -> Self{
        let copy = self
        copy.options.transitionEndFunction = action
        return copy
    }
}

public extension PKPage{
    @available(iOS 17.0, tvOS 17.0, *)
    func pkPageDuration(_ duration: Double?) -> Self {
        var copy = self
        if let duration{
            copy.progress = {
                return duration
            }
        }
        return copy
    }
    @available(iOS 17.0, tvOS 17.0, *)
    func pkPageProgress(_ progress: @escaping () -> Double?) -> Self {
        var copy = self
        copy.progress = progress
        return copy
    }
}
#endif
