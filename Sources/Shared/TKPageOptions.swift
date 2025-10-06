//
//  TKPageOptions.swift
//  TabKit
//
//  Created by Kamil Szpak on 01/10/2025.
//

import SwiftUI

public class TKPageOptions{
    public enum Direction{
        case forward
        case reverse
        
        #if canImport(UIKit)
        var uiKitValue: UIPageViewController.NavigationDirection{
            switch self {
            case .forward:
                return .forward
            case .reverse:
                return .reverse
            }
        }
        
        static func caseFor(uiKitValue: UIPageViewController.NavigationDirection) -> Direction{
            switch uiKitValue {
            case .forward:
                return .forward
            case .reverse:
                return .reverse
            @unknown default:
                return .forward
            }
        }
        #endif
        
    }
    var orientationRaw: Axis

    var pages: [TKPage]
    var pageAutoChangeIndexFunction: ((Int, Int) -> Void)?
    var pageAutoChangeDirectionFunction: ((Int, Direction) -> Void)?
    var pageManualChangeIndexFunction: ((Int, Int) -> Void)?
    var pageManualChangeDirectionFunction: ((Int, Direction) -> Void)?
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
    init(
        orientation: Axis = .horizontal,
        pages: [TKPage],
        options: [UIPageViewController.OptionsKey : Any]? = nil,
        pageChangeIndexFunction: ((Int, Int) -> Void)? = nil,
        pageChangeDirectionFunction: ((Int, Direction) -> Void)? = nil,
        pageManualIndexFunction: ((Int, Int) -> Void)? = nil,
        pageManualDirectionFunction: ((Int, Direction) -> Void)? = nil,
        transitionStartFunction: ((Int, Int) -> Void)? = nil,
        transitionEndFunction: ((Int, Int) -> Void)? = nil
    ) {
        self.orientationRaw = orientation
        self.pages = pages
        self.options = options
        self.pageAutoChangeIndexFunction = pageChangeIndexFunction
        self.pageAutoChangeDirectionFunction = pageChangeDirectionFunction
        self.pageManualChangeIndexFunction = pageChangeIndexFunction
        self.pageManualChangeDirectionFunction = pageChangeDirectionFunction
        self.transitionStartFunction = transitionStartFunction
        self.transitionEndFunction = transitionEndFunction
    }
    #else
    var orientation: Axis{
        return orientationRaw
    }
    init(
        orientation: Axis = .horizontal,
        pages: [TKPage],
        pageChangeIndexFunction: ((Int, Int) -> Void)? = nil,
        pageChangeDirectionFunction: ((Int, Direction) -> Void)? = nil,
        pageManualIndexFunction: ((Int, Int) -> Void)? = nil,
        pageManualDirectionFunction: ((Int, Direction) -> Void)? = nil,
        transitionStartFunction: ((Int, Int) -> Void)? = nil,
        transitionEndFunction: ((Int, Int) -> Void)? = nil
    ) {
        self.orientationRaw = orientation
        self.pages = pages
        self.pageAutoChangeIndexFunction = pageChangeIndexFunction
        self.pageAutoChangeDirectionFunction = pageChangeDirectionFunction
        self.pageManualChangeIndexFunction = pageChangeIndexFunction
        self.pageManualChangeDirectionFunction = pageChangeDirectionFunction
        self.transitionStartFunction = transitionStartFunction
        self.transitionEndFunction = transitionEndFunction
    }
    #endif


}
