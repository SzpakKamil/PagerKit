//
//  PKPagesViewAppKitTests.swift
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
struct PKPagesViewAppKitTests {
    
    // MARK: - Initializer Tests
    
    @Test("PKPagesView init with array")
    func testInitWithArray() {
        let pages = [PKPage { Text("1") }, PKPage { Text("2") }]
        let view = PKPagesView(pages: pages)
        
        #expect(view.pages.count == 2)
    }
    
    @Test("PKPagesView init with builder")
    func testInitWithBuilder() {
        let view = PKPagesView {
            PKPage { Text("1") }
            PKPage { Text("2") }
            PKPage { Text("3") }
        }
        
        #expect(view.pages.count == 3)
    }
    
    // MARK: - Modifiers Tests
    
    @Test("pkPageNavigationOrientation")
    func testPkPageNavigationOrientation() {
        let view = PKPagesView(pages: [])
            .pkPageNavigationOrientation(.vertical)
        
        #expect(view.options.orientationRaw == .vertical)
    }
    
    @Test("pkPageControlIndicatorHidesForSignlePage")
    func testPkPageControlIndicatorHidesForSinglePage() {
        let view = PKPagesView(pages: [])
            .pkPageControlIndicatorHidesForSignlePage(false)
        
        #expect(view.pageControlStyle.hidesForSinglePage == false)
    }

    @Test("pkPageControlFooterAlignment")
    func testPkPageControlFooterAlignment() {
        let view = PKPagesView(pages: [])
            .pkPageControlFooterAlignment(.topTrailing)
        
        #expect(view.pageControlStyle.footerAlignment == .topTrailing)
        
        let viewWithSpacing = PKPagesView(pages: [])
            .pkPageControlFooterAlignment(spacing: 20, alignment: .center)
            
        #expect(viewWithSpacing.pageControlStyle.footerAlignment == .center)
        #expect(viewWithSpacing.pageControlStyle.footerSpacing == 20)
    }
    
    @Test("pkPageControlIndicatorAlignment")
    func testPkPageControlIndicatorAlignment() {
        let view = PKPagesView(pages: [])
            .pkPageControlIndicatorAlignment(.topLeading)
        
        #expect(view.pageControlStyle.indicatorAlignment == .topLeading)
        
        let viewWithSpacing = PKPagesView(pages: [])
            .pkPageControlIndicatorAlignment(spacing: 15, alignment: .bottom)
            
        #expect(viewWithSpacing.pageControlStyle.indicatorAlignment == .bottom)
        #expect(viewWithSpacing.pageControlStyle.indicatorSpacing == 15)
    }
    
    @Test("pkPageControlPadding")
    func testPkPageControlPadding() {
        let view = PKPagesView(pages: [])
            .pkPageControlPadding(.horizontal, 10)
        
        #expect(view.pageControlStyle.paddingEdges == .horizontal)
        #expect(view.pageControlStyle.paddingLeght == 10)
    }
    
    @Test("pkPageControlIndicatorTintColor")
    func testPkPageControlIndicatorTintColor() {
        let view = PKPagesView(pages: [])
            .pkPageControlIndicatorTintColor(.red)
        
        #expect(view.pageControlStyle.indicatorTintColor == .red)
    }
    
    @Test("pkPageControlIndicatorAllowsContinuousInteraction")
    func testPkPageControlIndicatorAllowsContinuousInteraction() {
        let view = PKPagesView(pages: [])
            .pkPageControlIndicatorAllowsContinuousInteraction(false)
        
        #expect(view.pageControlStyle.allowsContinuousInteraction == false)
    }
    
    @Test("pkPageControlIndicatorCurrentIndicatorTintColor")
    func testPkPageControlIndicatorCurrentIndicatorTintColor() {
        let view = PKPagesView(pages: [])
            .pkPageControlIndicatorCurrentIndicatorTintColor(.blue)
        
        #expect(view.pageControlStyle.currentPageIndicatorTintColor == .blue)
    }
    
    @Test("pkPageControlIndicatorHidden")
    func testPkPageControlIndicatorHidden() {
        let view = PKPagesView(pages: [])
            .pkPageControlIndicatorHidden(true)
        
        #expect(view.pageControlStyle.hidden == true)
    }
    
    @Test("pkPageControlIndicatorBackgroundStyle")
    func testPkPageControlIndicatorBackgroundStyle() {
        let view = PKPagesView(pages: [])
            .pkPageControlIndicatorBackgroundStyle(.prominent)
        
        #expect(view.pageControlStyle.backgroundStyle == .prominent)
    }
    
    @Test("pkPageControlIndicatorPreferredIndicatorImage")
    func testPkPageControlIndicatorPreferredIndicatorImage() {
        let image = Image(systemName: "star")
        let view = PKPagesView(pages: [])
            .pkPageControlIndicatorPreferredIndicatorImage(image: image)
        
        #expect(view.pageControlStyle.preferredIndicatorImage == image)
    }
    
    @Test("pkPageControlIndicator per page")
    func testPkPageControlIndicatorPerPage() {
        let image = Image(systemName: "circle")
        let view = PKPagesView(pages: [])
            .pkPageControlIndicator(image, forPage: 0)
        
        #expect(view.pageControlStyle.indicatorImage[0] == image)
    }
    
    @Test("pkPageControlIndicatorCurrentIndicator per page")
    func testPkPageControlIndicatorCurrentIndicatorPerPage() {
        let image = Image(systemName: "circle.fill")
        let view = PKPagesView(pages: [])
            .pkPageControlIndicatorCurrentIndicator(image, forPage: 1)
        
        #expect(view.pageControlStyle.currentIndicatorImage[1] == image)
    }
    
    @Test("pkPageControlIndicatorPreferredCurrentPageIndicatorImage")
    @available(iOS 16.0, tvOS 16.0, macOS 13.0, *) // Adjusted availability assumption
    func testPkPageControlIndicatorPreferredCurrentPageIndicatorImage() {
        let image = Image(systemName: "star.fill")
        let view = PKPagesView(pages: [])
            .pkPageControlIndicatorPreferredCurrentPageIndicatorImage(image: image)
        
        #expect(view.pageControlStyle.preferredCurrentPageIndicatorImage == image)
    }
    
    @Test("pkPageControlIndicatorDirection")
    @available(iOS 16.0, tvOS 16.0, macOS 13.0, *) // Adjusted availability assumption
    func testPkPageControlIndicatorDirection() {
        let view = PKPagesView(pages: [])
            .pkPageControlIndicatorDirection(.bottomToTop)
        
        #expect(view.pageControlStyle.direction == .bottomToTop)
    }
    
    @Test("pkCurrentPageIndex binding")
    func testPkCurrentPageIndex() {
        let binding = Binding.constant(2)
        let view = PKPagesView(pages: [])
            .pkCurrentPageIndex(index: binding)
        
        // Cannot easily check equality of binding, but can check if it's set (not nil)
        #expect(view.customSelectedIndex != nil)
    }
    
    // MARK: - Callback Tests
    
    @Test("Callbacks")
    func testCallbacks() {
        let view = PKPagesView(pages: [])
            .pkOnManualPageChange { (idx: Int, dir: PKPageDirection) in }
            .pkOnManualPageChange { (prev: Int, curr: Int) in }
            .pkOnAutoPageChange { (idx: Int, dir: PKPageDirection) in }
            .pkOnAutoPageChange { (prev: Int, curr: Int) in }
            .pkOnTransitionStart { (prev: Int, curr: Int) in }
            .pkOnTransitionEnd { (prev: Int, curr: Int) in }
        
        #expect(view.options.pageManualChangeDirectionFunction != nil)
        #expect(view.options.pageManualChangeIndexFunction != nil)
        #expect(view.options.pageAutoChangeDirectionFunction != nil)
        #expect(view.options.pageAutoChangeIndexFunction != nil)
        #expect(view.options.transitionStartFunction != nil)
        #expect(view.options.transitionEndFunction != nil)
    }
    
    // MARK: - PKPage Modifiers Tests (AppKit specific)
    
    @Test("PKPage modifiers")
    @available(iOS 17.0, tvOS 17.0, macOS 14.0, *)
    func testPKPageModifiers() {
        let image = Image(systemName: "star")
        let page = PKPage { Text("Content") }
            .pkPageDuration(5.0)
            .pkPageCurrentIndicatorImage(image: image)
            .pkPageIndicatorImage(image: image)
            .pkPageFooter { Text("Footer") }
        
        #expect(page.progress != nil)
        // Check closure return value
        #expect(page.progress?() as? Double == 5.0)
        
        #expect(page.currentIndicatorImage == image)
        #expect(page.indicatorImage == image)
        #expect(page.footerView != nil)
        
        let pageWithProgress = PKPage { Text("P") }
            .pkPageProgress { 0.5 }
            
        #expect(pageWithProgress.progress?() as? Double == 0.5)
    }
}

#endif
#endif
