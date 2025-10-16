//
//  TKPagesUIViewControllerDataSourceUIKit.swift
//  TabKit
//
//  Created by Kamil Szpak on 01/10/2025.
//

#if !(os(macOS) || os(watchOS))
import UIKit
import SwiftUI

/// A data source for `UIPageViewController` that manages an array of SwiftUI pages.
extension TKPagesUIViewController: UIPageViewControllerDataSource {
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let pageViewController = viewController as? TKPageViewController,
              let viewControllerIndex = self.pages.firstIndex(of: pageViewController) else {
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else { return nil }
        return self.pages[previousIndex]
    }

    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let pageViewController = viewController as? TKPageViewController,
              let viewControllerIndex = self.pages.firstIndex(of: pageViewController) else {
            return nil
        }
        let nextIndex = viewControllerIndex + 1
        guard nextIndex < self.pages.count else { return nil }
        return self.pages[nextIndex]
    }
}
#endif
