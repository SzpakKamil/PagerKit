//
//  PKPageOptions.swift
//  PagerKit
//
//  Created by Kamil Szpak on 01/10/2025.
//

import SwiftUI

class PKPageOptions{
    var orientationRaw: Axis
    var pages: [PKPage]
    var pageAutoChangeIndexFunction: ((Int, Int) -> Void)?
    var pageAutoChangeDirectionFunction: ((Int, PKPageDirection) -> Void)?
    var pageManualChangeIndexFunction: ((Int, Int) -> Void)?
    var pageManualChangeDirectionFunction: ((Int, PKPageDirection) -> Void)?
    var transitionStartFunction: ((Int, Int) -> Void)?
    var transitionEndFunction: ((Int, Int) -> Void)?
    
    #if !(os(macOS) || os(watchOS))
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

    init(pages: [PKPage]) {
        self.orientationRaw = .horizontal
        self.pages = pages
        #if !(os(macOS) || os(watchOS))
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
