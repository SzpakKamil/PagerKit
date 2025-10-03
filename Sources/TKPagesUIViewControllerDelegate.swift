//
//  TKPagesUIViewControllerDelegate.swift
//  TabKit
//
//  Created by Kamil Szpak on 01/10/2025.
//

import UIKit
import SwiftUI

/// A delegate for `UIPageViewController` that updates the current page index and page control.
extension TKPagesUIViewController: UIPageViewControllerDelegate {
    public func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        guard let visibleViewController = pageViewController.viewControllers?.first as? TKPageViewController else { return }
        guard let previousVoiewController = previousViewControllers.first as? TKPageViewController else { return }
        
        
        if #available(iOS 17.0, tvOS 17.0, *) {
            if let progress = self.pageControl.progress as? UIPageControlTimerProgress{
                progress.resumeTimer()
            }
        }

        DispatchQueue.main.async{
            self.options.transitionEndFunction?(previousVoiewController.index, visibleViewController.index)
        }
        self.navigateToPage(visibleViewController.index, isManualChange: true)

    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController]) {
        guard
            let currentViewController = (pageViewController.viewControllers?.first as? TKPageViewController),
            let destinationViewController = pendingViewControllers.first as? TKPageViewController
        else { return }
        print(currentViewController.isMovingToParent)
        if #available(iOS 17.0, tvOS 17.0, *) {
            if let progress = self.pageControl.progress as? UIPageControlTimerProgress{
                progress.pauseTimer()
            }
        }
        DispatchQueue.main.async{
            self.options.transitionStartFunction?(currentViewController.index, destinationViewController.index)
        }
        
    }
    
}

