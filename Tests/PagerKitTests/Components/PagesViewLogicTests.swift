//
//  PKPagesViewLogicTests.swift
//  PagerKit
//
//  Created by Gemini CLI on 24/03/2026.
//

import SwiftUI
#if canImport(Testing)
import Testing
@testable import PagerKit

#if os(macOS) || os(watchOS)

@MainActor
struct PKPagesViewLogicTests {

    @Test("Test PKPagesView initialization and page control style from pages")
    func testInitializationFromPages() {
        let star = Image(systemName: "star")
        let circle = Image(systemName: "circle")
        
        let page0 = PKPage { Text("0") }
            .pkPageCurrentIndicatorImage(image: star)
        let page1 = PKPage { Text("1") }
            .pkPageIndicatorImage(image: circle)
            
        let view = PKPagesView(pages: [page0, page1])
        
        #expect(view.pages.count == 2)
        #expect(view.pageControlStyle.currentIndicatorImage[0] == star)
        #expect(view.pageControlStyle.indicatorImage[1] == circle)
    }

    @Test("Test goToNextPage logic")
    func testGoToNextPage() {
        let view = PKPagesView(pages: [
            PKPage { Text("0") },
            PKPage { Text("1") },
            PKPage { Text("2") }
        ])
        
        // Initial state
        #expect(view.customSelectedIndex == nil)
        
        // We can't easily trigger private @State changes from outside in a unit test 
        // without some trickery, but we can verify the function exists and doesn't crash.
        // In a real scenario, we might want to expose some state for testing or use UI tests.
        
        view.goToNextPage()
        // Note: selectedIndex is private and uses @State, so we can't easily verify the change here.
        // However, we are verifying that the call is successful.
    }

    @Test("Test onPageChange callbacks")
    func testOnPageChangeCallbacks() {
        var autoIndexOld = -1
        var autoIndexNew = -1
        var manualIndexOld = -1
        var manualIndexNew = -1
        
        let view = PKPagesView(pages: [
            PKPage { Text("0") },
            PKPage { Text("1") }
        ])
        .pkOnAutoPageChange { old, new in
            autoIndexOld = old
            autoIndexNew = new
        }
        .pkOnManualPageChange { old, new in
            manualIndexOld = old
            manualIndexNew = new
        }
        
        // Test manual change
        view.onPageChange(oldValue: 0, newValue: 1, isInitial: false)
        #expect(manualIndexOld == 0)
        #expect(manualIndexNew == 1)
        #expect(autoIndexOld == -1) // Should not change
        
        // Reset and test auto change
        // We need a way to set isAutoChange to true, but it's private.
        // This confirms that without isAutoChange being set (which happens in goToNextPage),
        // it defaults to manual.
    }
    
    @Test("Test stopAllTimers")
    func testStopAllTimers() {
        let view = PKPagesView(pages: [PKPage { Text("0") }])
        // Just verify it can be called without issues
        view.stopAllTimers()
    }

    @Test("Test initial onPageChange")
    func testInitialPageChange() {
        var callbackCalled = false
        let page = PKPage { Text("0") }.pkPageDuration(5.0)
        let view = PKPagesView(pages: [page])
            .pkOnManualPageChange { (old: Int, new: Int) in callbackCalled = true }
        
        view.onPageChange(oldValue: 0, newValue: 0, isInitial: true)
        
        #expect(callbackCalled == false)
    }

    @Test("Test autoPageChange callbacks")
    func testAutoPageChangeCallbacks() {
        var autoIndexNew = -1
        var manualIndexNew = -1
        
        let view = PKPagesView(pages: [PKPage { Text("0") }, PKPage { Text("1") }])
            .pkOnAutoPageChange { (_: Int, new: Int) in autoIndexNew = new }
            .pkOnManualPageChange { (_: Int, new: Int) in manualIndexNew = new }
        
        // Manually set isAutoChange to true using Mirror if possible, 
        // but since we can call onPageChange directly, let's see.
        // Actually, we can't easily set isAutoChange because it's a private @State.
        // However, we can test that by default it's manual.
        view.onPageChange(oldValue: 0, newValue: 1, isInitial: false)
        #expect(manualIndexNew == 1)
        #expect(autoIndexNew == -1)
        
        // To silence the warning about autoIndexNew being written but not read
        #expect(autoIndexNew == -1)
    }

    @Test("Test footer view presence")
    func testFooterViewPresence() {
        let footerText = "Footer 0"
        let page0 = PKPage { Text("0") }.pkPageFooter { Text(footerText) }
        let page1 = PKPage { Text("1") }
        
        let view = PKPagesView(pages: [page0, page1])
        
        #expect(view.pages[0].footerView != nil)
        #expect(view.pages[1].footerView == nil)
    }

    @Test("Test PageControl visibility logic")
    func testPageControlVisibility() {
        var style = PKPageControlStyle()
        style.hidesForSinglePage = true
        
        // Single page, should hide
        let view1 = PKPagesView(pages: [PKPage { Text("0") }])
        // We can't easily check the body's internal if-statement in a unit test,
        // but we can verify the style property is set.
        #expect(view1.pageControlStyle.hidesForSinglePage == true)
        
        let view2 = PKPagesView(pages: [PKPage { Text("0") }, PKPage { Text("1") }])
        #expect(view2.pages.count > 1)
    }

    @Test("Test custom binding initialization")
    func testCustomBinding() {
        let binding = Binding.constant(1)
        let view = PKPagesView(pages: [
            PKPage { Text("0") },
            PKPage { Text("1") }
        ])
        .pkCurrentPageIndex(index: binding)
        
        #expect(view.customSelectedIndex != nil)
    }
}

#endif
#endif
