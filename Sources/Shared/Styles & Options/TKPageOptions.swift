//
//  TKPageOptions.swift
//  TabKit
//
//  Created by Kamil Szpak on 01/10/2025.
//

import SwiftUI

class TKPageOptions{
    var orientationRaw: Axis
    var pages: [TKPage]
    var pageAutoChangeIndexFunction: ((Int, Int) -> Void)?
    var pageAutoChangeDirectionFunction: ((Int, TKPageDirection) -> Void)?
    var pageManualChangeIndexFunction: ((Int, Int) -> Void)?
    var pageManualChangeDirectionFunction: ((Int, TKPageDirection) -> Void)?
    var transitionStartFunction: ((Int, Int) -> Void)?
    var transitionEndFunction: ((Int, Int) -> Void)?
    
    #if canImport(UIKit)
    var options: [UIPageViewController.OptionsKey : Any]?
    var orientation: UIPageViewController.NavigationOrientation{
        switch orientationRaw {
        case .horizontal:
            return .horizontal
        case .vertical:
            return .vertical
        }
    }
    #else
    var orientation: Axis{
        return orientationRaw
    }
    #endif

    init(
        pages: [TKPage],
    ) {
        self.orientationRaw = .horizontal
        self.pages = pages
        #if canImport(UIKit)
        self.options = nil
        #endif
        self.pageAutoChangeIndexFunction = nil
        self.pageAutoChangeDirectionFunction = nil
        self.pageManualChangeIndexFunction = nil
        self.pageManualChangeDirectionFunction = nil
        self.transitionStartFunction = nil
        self.transitionEndFunction = nil
    }
}
