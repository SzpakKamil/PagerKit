//
//  PKPagesUIViewControllerDelegateUIKit.swift
//  PagerKit
//
//  Created by Kamil Szpak on 01/10/2025.
//

#if !(os(macOS) || os(watchOS))
import UIKit
import SwiftUI

/// A delegate for `UIPageViewController` that updates the current page index and page control.
extension PKPagesUIViewController: UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        guard let visibleViewController = pageViewController.viewControllers?.first as? PKPageViewController else { return }
        guard let previousVoiewController = previousViewControllers.first as? PKPageViewController else { return }
        
        
        if #available(iOS 17.0, tvOS 17.0, *) {
            if let progress = self.pageControl.progress as? UIPageControlTimerProgress{
                progress.resumeTimer()
            }
        }

        self.options.transitionEndFunction?(previousVoiewController.index, visibleViewController.index)
        self.navigateToPage(visibleViewController.index, isManualChange: true)

    }
    
    func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController]) {
        guard
            let currentViewController = (pageViewController.viewControllers?.first as? PKPageViewController),
            let destinationViewController = pendingViewControllers.first as? PKPageViewController
        else { return }
        print(currentViewController.isMovingToParent)
        if #available(iOS 17.0, tvOS 17.0, *) {
            if let progress = self.pageControl.progress as? UIPageControlTimerProgress{
                progress.pauseTimer()
            }
        }
        self.options.transitionStartFunction?(currentViewController.index, destinationViewController.index)
    }
    
}
#endif
