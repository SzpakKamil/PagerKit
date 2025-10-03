//
//  TKPageOptions.swift
//  TabKit
//
//  Created by Kamil Szpak on 01/10/2025.
//

import SwiftUI

class TKPageOptions{
    var orientation: UIPageViewController.NavigationOrientation
    var options: [UIPageViewController.OptionsKey : Any]?
    var pages: [TKPage]
    var pageAutoChangeIndexFunction: ((Int, Int) -> Void)?
    var pageAutoChangeDirectionFunction: ((Int, UIPageViewController.NavigationDirection) -> Void)?
    var pageManualChangeIndexFunction: ((Int, Int) -> Void)?
    var pageManualChangeDirectionFunction: ((Int, UIPageViewController.NavigationDirection) -> Void)?
    var transitionStartFunction: ((Int, Int) -> Void)?
    var transitionEndFunction: ((Int, Int) -> Void)?

    public init(
        orientation: UIPageViewController.NavigationOrientation = .horizontal,
        pages: [TKPage],
        options: [UIPageViewController.OptionsKey : Any]? = nil,
        pageChangeIndexFunction: ((Int, Int) -> Void)? = nil,
        pageChangeDirectionFunction: ((Int, UIPageViewController.NavigationDirection) -> Void)? = nil,
        pageManualIndexFunction: ((Int, Int) -> Void)? = nil,
        pageManualDirectionFunction: ((Int, UIPageViewController.NavigationDirection) -> Void)? = nil,
        transitionStartFunction: ((Int, Int) -> Void)? = nil,
        transitionEndFunction: ((Int, Int) -> Void)? = nil
    ) {
        self.orientation = orientation
        self.pages = pages
        self.options = options
        self.pageAutoChangeIndexFunction = pageChangeIndexFunction
        self.pageAutoChangeDirectionFunction = pageChangeDirectionFunction
        self.pageManualChangeIndexFunction = pageChangeIndexFunction
        self.pageManualChangeDirectionFunction = pageChangeDirectionFunction
        self.transitionStartFunction = transitionStartFunction
        self.transitionEndFunction = transitionEndFunction
    }
}

