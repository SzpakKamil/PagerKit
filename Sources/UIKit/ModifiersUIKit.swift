//
//  ModifiersUIKit.swift
//  PagerKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

#if !(os(macOS) || os(watchOS))
import SwiftUI

public extension PKPagesView{
    func pkPageControlIndicatorHidesForSignlePage(_ condition: Bool) -> Self{
        var copy = self
        copy.pageControlStyle.hidesForSinglePage = condition
        return copy
    }
    func pkPageNavigationOrientation(_ orientation: Axis) -> Self{
        let copy = self
        copy.options.orientationRaw = orientation
        return copy
    }
    
    
    func pkPageOptions(_ options: [UIPageViewController.OptionsKey : Any]?) -> Self{
        let copy = self
        copy.options.options = options
        return copy
    }

    func pkPageControlFooterAlignment(_ alignment: Alignment = .bottomLeading) -> Self{
        var copy = self
        copy.pageControlStyle.indicatorAlignment = alignment
        return copy
    }
    
    func pkPageFooterViewAlignment(spacing: CGFloat, alignment: Alignment = .bottomLeading) -> Self{
        var copy = self
        copy.pageControlStyle.footerAlignment = alignment
        copy.pageControlStyle.footerSpacing = spacing
        return copy
    }
    
    func pkPageControlPadding(_ edges: Edge.Set, _ lenght: CGFloat) -> Self{
        var copy = self
        copy.pageControlStyle.paddingEdges = edges
        copy.pageControlStyle.paddingLeght = lenght
        return copy
    }
    
    func pkPageControlIndicatorAlignment(_ alignment: Alignment = .bottom) -> Self{
        var copy = self
        copy.pageControlStyle.indicatorAlignment = alignment
        return copy
    }

    func pkPageControlIndicatorAlignment(spacing: CGFloat, alignment: Alignment = .bottom) -> Self{
        var copy = self
        copy.pageControlStyle.indicatorAlignment = alignment
        copy.pageControlStyle.indicatorSpacing = spacing
        return copy
    }
    
    func pkPageControlIndicatorTintColor(_ color: Color? = .secondary) -> Self{
        var copy = self
        copy.pageControlStyle.indicatorTintColor = color
        return copy
    }
    func pkPageControlIndicatorAllowsContinuousInteraction(_ condition: Bool) -> Self{
        var copy = self
        copy.pageControlStyle.allowsContinuousInteraction = condition
        return copy
    }
    func pkPageControlIndicatorCurrentIndicatorTintColor(_ color: Color? = .primary) -> Self{
        var copy = self
        copy.pageControlStyle.currentPageIndicatorTintColor = color
        return copy
    }
    func pkPageControlIndicatorHidden(_ condition: Bool) -> Self{
        var copy = self
        copy.pageControlStyle.hidden = condition
        return copy
    }
    func pkPageControlIndicatorBackgroundStyle(_ style: PKPageControlIndicatorBackgroundStyle = .automatic) -> Self{
        var copy = self
        copy.pageControlStyle.backgroundStyle = style
        return copy
    }
    func pkPageControlIndicatorPreferredIndicatorImage(image: UIImage?) -> Self{
        var copy = self
        copy.pageControlStyle.preferredIndicatorImage = image
        return copy
    }
    func pkPageControlIndicator(_ image: UIImage?, forPage: Int) -> Self{
        var copy = self
        copy.pageControlStyle.indicatorImage[forPage] = image
        return copy
    }
    func pkPageControlIndicatorCurrentIndicator(_ image: UIImage?, forPage: Int) -> Self{
        var copy = self
        copy.pageControlStyle.currentIndicatorImage[forPage] = image
        return copy
    }
    @available(iOS 16.0, tvOS 16.0, *)
    func pkPageControlIndicatorPreferredCurrentPageIndicatorImage(image: UIImage?) -> Self{
        var copy = self
        copy.pageControlStyle.preferredCurrentPageIndicatorImage = image
        return copy
    }
    @available(iOS 16.0, tvOS 16.0, *)
    func pkPageControlIndicatorDirection(_ direction: PKPageControlIndicatorDirection) -> Self{
        var copy = self
        copy.pageControlStyle.direction = direction
        return copy
    }
    func pkCurrentPageIndex(index: Binding<Int>) -> Self{
        var copy = self
        copy.customPageIndexBinding = index
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
                let timerProgress = UIPageControlTimerProgress(preferredDuration: duration)
                timerProgress.resumeTimer()
                timerProgress.resetsToInitialPageAfterEnd = true
                return timerProgress
            }
        }
        return copy
    }
    @available(iOS 17.0, tvOS 17.0, *)
    func pkPageProgress(_ progress: UIPageControlProgress) -> Self {
        var copy = self
        copy.progress = {
            return progress
        }
        return copy
    }
    @available(iOS 17.0, tvOS 17.0, *)
    func pkPageProgress(_ progress: @escaping () -> UIPageControlProgress) -> Self {
        var copy = self
        copy.progress = progress
        return copy
    }
    
    
    func pkPageCurrentIndicatorImage(_ image: UIImage?) -> Self{
        var copy = self
        copy.currentIndicatorImage = image
        return copy
    }
    
    func pkPageIndicatorImage(_ image: UIImage?) -> Self{
        var copy = self
        copy.indicatorImage = image
        return copy
    }
    
    func pkPageFooter(@ViewBuilder _ view: () -> some View ) -> Self{
        var copy = self
        copy.footerView = AnyView(view())
        copy.footerViewController = UIHostingController(rootView: AnyView(view()))
        return copy
    }
    
    
    @available(iOS 17.0, tvOS 17.0, *)
    func pkPageProgress(_ progress: @escaping () -> Double?) -> Self {
        guard let progress = progress() else { return self }
        var copy = self
        
        copy.progress = {
            let timerProgress = UIPageControlTimerProgress(preferredDuration: progress)
            timerProgress.resumeTimer()
            timerProgress.resetsToInitialPageAfterEnd = true
            return timerProgress
        }
        return copy
    }
}
#endif
