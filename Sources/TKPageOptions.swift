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
    var pageChangeFunction: ((Int, UIPageViewController.NavigationDirection) -> Void)?
    var transitionStartFunction: ((Int, Int) -> Void)?
    var transitionEndFunction: ((Int, Int) -> Void)?

    public init(
        orientation: UIPageViewController.NavigationOrientation = .horizontal,
        pages: [TKPage],
        options: [UIPageViewController.OptionsKey : Any]? = nil,
        pageChangeFunction: ((Int, UIPageViewController.NavigationDirection) -> Void)? = nil,
        transitionStartFunction: ((Int, Int) -> Void)? = nil,
        transitionEndFunction: ((Int, Int) -> Void)? = nil
    ) {
        self.orientation = orientation
        self.pages = pages
        self.options = options
        self.pageChangeFunction = pageChangeFunction
        self.transitionStartFunction = transitionStartFunction
        self.transitionEndFunction = transitionEndFunction
    }
}

