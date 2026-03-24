//
//  UIKitTests.swift
//  PagerKit
//
//  Created by Gemini CLI on 24/03/2026.
//

import SwiftUI
#if canImport(UIKit) && !os(watchOS)
import UIKit
#if canImport(Testing)
import Testing
@testable import PagerKit

@MainActor
struct UIKitTests {
    
    // MARK: - Helpers
    
    private func createTestController() -> PKPagesUIViewController {
        let pages = [
            PKPage { Text("Page 0") },
            PKPage { Text("Page 1") }
        ]
        let options = PKPageOptions(pages: pages)
        var index = 0
        let binding = Binding(get: { index }, set: { index = $0 })
        let controller = PKPagesUIViewController(currentPageIndex: binding, options: options)
        
        // Add to window to ensure UIPageViewController's visible view controllers and internal states are updated
        let window = UIWindow(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
        window.rootViewController = controller
        window.makeKeyAndVisible()
        
        // Force viewDidLoad
        _ = controller.view
        return controller
    }
    
    // MARK: - PKPagesUIViewController Tests
    
    @Test("PKPagesUIViewController initialization")
    func testControllerInit() {
        let controller = createTestController()
        #expect(controller.pages.count == 2)
        #expect(controller.lastValueOfCurrentPageIndex == 0)
        #expect(controller.dataSource != nil)
        #expect(controller.delegate != nil)
        #expect(controller.view.backgroundColor == .clear)
    }
    
    @Test("PKPagesUIViewController DataSource logic")
    func testDataSource() {
        let controller = createTestController()
        let firstVC = controller.pages[0]
        let secondVC = controller.pages[1]
        
        let ds = controller as UIPageViewControllerDataSource
        
        let after = ds.pageViewController(controller, viewControllerAfter: firstVC)
        #expect(after === secondVC)
        
        let before = ds.pageViewController(controller, viewControllerBefore: secondVC)
        #expect(before === firstVC)
        
        #expect(ds.pageViewController(controller, viewControllerBefore: firstVC) == nil)
        #expect(ds.pageViewController(controller, viewControllerAfter: secondVC) == nil)
    }
    
    @Test("PKPagesUIViewController Delegate transition start")
    func testDelegateTransitionStart() {
        let controller = createTestController()
        let firstVC = controller.pages[0]
        let secondVC = controller.pages[1]
        
        let delegate = controller as UIPageViewControllerDelegate
        
        var transitionStarted = false
        controller.options.transitionStartFunction = { prev, dest in
            #expect(prev == 0)
            #expect(dest == 1)
            transitionStarted = true
        }
        
        // Mock current view controllers
        controller.setViewControllers([firstVC], direction: .forward, animated: false)
        
        delegate.pageViewController?(controller, willTransitionTo: [secondVC])
        
        #expect(transitionStarted)
    }
    
    @Test("PKPagesUIViewController Delegate transition end")
    func testDelegateTransitionEnd() async throws {
        let controller = createTestController()
        let firstVC = controller.pages[0]
        let secondVC = controller.pages[1]
        
        // Flush initial navigateToPage(0) from viewDidLoad
        try await Task.sleep(nanoseconds: 100_000_000)
        
        let delegate = controller as UIPageViewControllerDelegate
        
        // Ensure secondVC is the current one so delegate logic picks it up
        controller.setViewControllers([secondVC], direction: .forward, animated: false)
        
        var transitionEnded = false
        controller.options.transitionEndFunction = { prev, curr in
            #expect(prev == 0)
            #expect(curr == 1)
            transitionEnded = true
        }
        
        delegate.pageViewController?(controller, didFinishAnimating: true, previousViewControllers: [firstVC], transitionCompleted: true)
        
        // Wait for DispatchQueue.main.async inside navigateToPage
        try await Task.sleep(nanoseconds: 100_000_000)
        
        #expect(transitionEnded)
        #expect(controller.currentPageIndexBinding.wrappedValue == 1)
    }
    
    @Test("PKPagesUIViewController navigateToPage")
    func testNavigateToPage() async throws {
        let controller = createTestController()
        
        // Flush initial navigateToPage(0) from viewDidLoad
        try await Task.sleep(nanoseconds: 100_000_000)
        
        var autoChangeCalled = false
        controller.options.pageAutoChangeIndexFunction = { prev, curr in
            #expect(prev == 0)
            #expect(curr == 1)
            autoChangeCalled = true
        }
        
        controller.navigateToPage(1, isManualChange: false)
        
        // Wait for DispatchQueue.main.async inside navigateToPage
        try await Task.sleep(nanoseconds: 100_000_000)
        
        #expect(controller.lastValueOfCurrentPageIndex == 1)
        #expect(controller.pageControl.currentPage == 1)
        #expect(autoChangeCalled)
    }
    
    // MARK: - PKPageViewController Tests
    
    @Test("PKPageViewController initialization")
    func testPageVCInit() {
        let page = PKPage { Text("Test") }
        let pageVC = PKPageViewController(index: 5, page: page)
        #expect(pageVC.index == 5)
        #expect(pageVC.view.backgroundColor == .clear)
    }
}
#endif
#endif
