//
//  TKPage.swift
//  TabKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

import SwiftUI

public extension TKPagesView{
    func tkPageControlHidesForSignlePage(_ condition: Bool) -> Self{
        var copy = self
        copy.pageControlStyle.hidesForSinglePage = condition
        return copy
    }
    func tkPageNavigationOrientation(_ orientation: UIPageViewController.NavigationOrientation) -> Self{
        let copy = self
        copy.options.orientation = orientation
        return copy
    }
    
    
    func tkPageOptions(_ options: [UIPageViewController.OptionsKey : Any]?) -> Self{
        let copy = self
        copy.options.options = options
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
    func tkPageControlBackgroundStyle(_ style: UIPageControl.BackgroundStyle = .automatic) -> Self{
        var copy = self
        copy.pageControlStyle.backgroundStyle = style
        return copy
    }
    func tkPageControlPreferredIndicatorUIImage(image: UIImage?) -> Self{
        var copy = self
        copy.pageControlStyle.preferredIndicatorUIImage = image
        return copy
    }
    func tkPageControlIndicator(_ image: UIImage?, forPage: Int) -> Self{
        var copy = self
        copy.pageControlStyle.indicatorImage[forPage] = image
        return copy
    }
    func tkPageControlCurrentIndicator(_ image: UIImage?, forPage: Int) -> Self{
        var copy = self
        copy.pageControlStyle.currentIndicatorImage[forPage] = image
        return copy
    }
    @available(iOS 16.0, *)
    func tkPageControlPreferredCurrentPageIndicatorImage(image: UIImage?) -> Self{
        var copy = self
        copy.pageControlStyle.preferredCurrentPageIndicatorImage = image
        return copy
    }
    @available(iOS 16.0, *)
    func tkPageControlDirection(_ direction: UIPageControl.Direction) -> Self{
        var copy = self
        copy.pageControlStyle.direction = direction.rawValue
        return copy
    }
    func tkCurrentPageIndex(index: Binding<Int>) -> Self{
        var copy = self
        copy.customPageIndexBinding = index
        return copy
    }
    
    func tkOnManualPageChange(action: @escaping ( _ currentIndex: Int,_ direction: UIPageViewController.NavigationDirection) -> Void) -> Self{
        let copy = self
        copy.options.pageManualChangeDirectionFunction = action
        return copy
    }
    
    func tkOnManualPageChange(action: @escaping (_ previousIndex: Int,_ currentIndex: Int) -> Void) -> Self{
        let copy = self
        copy.options.pageManualChangeIndexFunction = action
        return copy
    }
    
    func tkOnAutoPageChange(action: @escaping ( _ currentIndex: Int,_ direction: UIPageViewController.NavigationDirection) -> Void) -> Self{
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
    @available(iOS 17.0, *)
    func tkPageDuration(_ duration: Double?) -> Self {
        var copy = self
        copy.duration = duration
        return copy
    }
}
