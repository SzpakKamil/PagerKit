//
//  PKPagesViewModifiersTests.swift
//  PagerKit
//
//  Created by Gemini CLI on 24/03/2026.
//

import SwiftUI
#if canImport(Testing)
import Testing
@testable import PagerKit

@MainActor
struct PKPagesViewModifiersTests {
    
    // MARK: - Helpers
    
    private var basePager: PKPagesView {
        PKPagesView {
            PKPage { Text("1") }
            PKPage { Text("2") }
        }
    }
    
    private var basePage: PKPage {
        PKPage { Text("Page") }
    }
    
    // MARK: - PKPagesView Modifiers
    
    @Test("pkPageNavigationOrientation property check")
    func testNavigationOrientation() {
        let pager = basePager.pkPageNavigationOrientation(.vertical)
        #expect(pager.options.orientationRaw == .vertical)
    }
    
    @Test("pkPageControlIndicatorHidesForSignlePage property check")
    func testHidesForSinglePage() {
        let pager = basePager.pkPageControlIndicatorHidesForSignlePage(false)
        #expect(pager.pageControlStyle.hidesForSinglePage == false)
    }
    
    @Test("pkPageControlIndicatorTintColor property check")
    func testIndicatorTintColor() {
        let pager = basePager.pkPageControlIndicatorTintColor(.red)
        #expect(pager.pageControlStyle.indicatorTintColor == .red)
    }
    
    @Test("pkPageControlIndicatorCurrentIndicatorTintColor property check")
    func testCurrentIndicatorTintColor() {
        let pager = basePager.pkPageControlIndicatorCurrentIndicatorTintColor(.blue)
        #expect(pager.pageControlStyle.currentPageIndicatorTintColor == .blue)
    }
    
    @Test("pkPageControlIndicatorHidden property check")
    func testIndicatorHidden() {
        let pager = basePager.pkPageControlIndicatorHidden(true)
        #expect(pager.pageControlStyle.hidden == true)
    }
    
    @Test("pkPageControlIndicatorBackgroundStyle property check")
    func testBackgroundStyle() {
        let pager = basePager.pkPageControlIndicatorBackgroundStyle(.minimal)
        #expect(pager.pageControlStyle.backgroundStyle == .minimal)
    }
    
    @available(iOS 16.0, tvOS 16.0, macOS 13.0, watchOS 9.0, *)
    @Test("pkPageControlIndicatorDirection property check")
    func testIndicatorDirection() {
        let pager = basePager.pkPageControlIndicatorDirection(.leftToRight)
        #expect(pager.pageControlStyle.direction == .leftToRight)
    }
    
    @Test("pkPageControlIndicatorAlignment property check")
    func testIndicatorAlignment() {
        // Variant 1
        let pager1 = basePager.pkPageControlIndicatorAlignment(.top)
        #expect(pager1.pageControlStyle.indicatorAlignment == .top)
        
        // Variant 2
        let pager2 = basePager.pkPageControlIndicatorAlignment(spacing: 30, alignment: .top)
        #expect(pager2.pageControlStyle.indicatorAlignment == .top)
        #expect(pager2.pageControlStyle.indicatorSpacing == 30)
    }
    
    @Test("pkPageControlFooterAlignment property check")
    func testFooterAlignment() {
        // Variant 1
        let pager1 = basePager.pkPageControlFooterAlignment(.topTrailing)
        #expect(pager1.pageControlStyle.footerAlignment == .topTrailing)
        
        // Variant 2
        let pager2 = basePager.pkPageControlFooterAlignment(spacing: 25, alignment: .topTrailing)
        #expect(pager2.pageControlStyle.footerAlignment == .topTrailing)
        #expect(pager2.pageControlStyle.footerSpacing == 25)
    }
    
    @Test("pkPageControlPadding property check")
    func testPadding() {
        let pager = basePager.pkPageControlPadding(.all, 20)
        #expect(pager.pageControlStyle.paddingEdges == .all)
        #expect(pager.pageControlStyle.paddingLeght == 20)
    }
    
    @Test("pkPageControlIndicatorAllowsContinuousInteraction property check")
    func testContinuousInteraction() {
        let pager = basePager.pkPageControlIndicatorAllowsContinuousInteraction(false)
        #expect(pager.pageControlStyle.allowsContinuousInteraction == false)
    }
    
    @Test("pkCurrentPageIndex property check")
    func testCurrentPageIndex() {
        let index = 5
        let pager = basePager.pkCurrentPageIndex(index: .constant(index))
        
        #if !(os(macOS) || os(watchOS))
        #expect(pager.customPageIndexBinding?.wrappedValue == index)
        #else
        #expect(pager.customSelectedIndex?.wrappedValue == index)
        #endif
    }
    
    #if !(os(macOS) || os(watchOS))
    @Test("UIKit Image modifiers property check")
    @available(iOS 16.0, tvOS 16.0, *)
    func testUIKitImageModifiers() {
        let image = UIImage()
        let pager = basePager
            .pkPageControlIndicatorPreferredIndicatorImage(image: image)
            .pkPageControlIndicatorPreferredCurrentPageIndicatorImage(image: image)
            .pkPageControlIndicator(image, forPage: 0)
            .pkPageControlIndicatorCurrentIndicator(image, forPage: 0)
        
        #expect(pager.pageControlStyle.preferredIndicatorImage === image)
        #expect(pager.pageControlStyle.preferredCurrentPageIndicatorImage === image)
        #expect(pager.pageControlStyle.indicatorImage[0] == image)
        #expect(pager.pageControlStyle.currentIndicatorImage[0] == image)
    }
    
    @Test("pkPageOptions (UIKit) property check")
    func testUIKitOptions() {
        let options: [UIPageViewController.OptionsKey : Any] = [.interPageSpacing: 5.0]
        let pager = basePager.pkPageOptions(options)
        #expect(pager.options.options?[.interPageSpacing] as? Double == 5.0)
    }
    #else
    @Test("AppKit/WatchKit Image modifiers property check")
    func testAppKitImageModifiers() {
        let image = Image(systemName: "star")
        let pager = basePager
            .pkPageControlIndicatorPreferredIndicatorImage(image: image)
            .pkPageControlIndicatorPreferredCurrentPageIndicatorImage(image: image)
            .pkPageControlIndicator(image, forPage: 0)
            .pkPageControlIndicatorCurrentIndicator(image, forPage: 0)
        
        #expect(pager.pageControlStyle.preferredIndicatorImage != nil)
        #expect(pager.pageControlStyle.preferredCurrentPageIndicatorImage != nil)
        #expect(pager.pageControlStyle.indicatorImage[0] != nil)
        #expect(pager.pageControlStyle.currentIndicatorImage[0] != nil)
    }
    #endif
    
    // MARK: - Handler Modifiers
    
    @Test("Event Handlers property check")
    func testEventHandlers() {
        let pager = basePager
            .pkOnManualPageChange { (prev: Int, curr: Int) in }
            .pkOnManualPageChange { (curr: Int, dir: PKPageDirection) in }
            .pkOnAutoPageChange { (prev: Int, curr: Int) in }
            .pkOnAutoPageChange { (curr: Int, dir: PKPageDirection) in }
            .pkOnTransitionStart { (prev: Int, curr: Int) in }
            .pkOnTransitionEnd { (prev: Int, curr: Int) in }
        
        #expect(pager.options.pageManualChangeIndexFunction != nil)
        #expect(pager.options.pageManualChangeDirectionFunction != nil)
        #expect(pager.options.pageAutoChangeIndexFunction != nil)
        #expect(pager.options.pageAutoChangeDirectionFunction != nil)
        #expect(pager.options.transitionStartFunction != nil)
        #expect(pager.options.transitionEndFunction != nil)
    }
    
    // MARK: - PKPage Modifiers
    
    @Test("PKPage footer modifier property check")
    func testPageFooter() {
        let page = basePage.pkPageFooter { Text("Footer") }
        #expect(page.footerView != nil)
        #if !(os(macOS) || os(watchOS))
        #expect(page.footerViewController != nil)
        #endif
    }
    
    #if !(os(macOS) || os(watchOS))
    @Test("PKPage Image modifiers (UIKit)")
    func testPKPageImageUIKit() {
        let image = UIImage()
        let page = basePage
            .pkPageIndicatorImage(image: image)
            .pkPageCurrentIndicatorImage(image: image)
        
        #expect(page.indicatorImage === image)
        #expect(page.currentIndicatorImage === image)
    }
    #else
    @Test("PKPage Image modifiers (AppKit)")
    func testPKPageImageAppKit() {
        let image = Image(systemName: "star")
        let page = basePage
            .pkPageIndicatorImage(image: image)
            .pkPageCurrentIndicatorImage(image: image)
        
        #expect(page.indicatorImage != nil)
        #expect(page.currentIndicatorImage != nil)
    }
    #endif
    
    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    @Test("PKPage progress/duration modifiers property check")
    func testPageProgress() {
        // Duration
        let page1 = basePage.pkPageDuration(5.0)
        #expect(page1.progress != nil)
        
        // Closure returning Double?
        let page2 = basePage.pkPageProgress { 0.5 }
        #expect(page2.progress != nil)
        
        #if !(os(macOS) || os(watchOS))
        // UIKit specific Progress overloads
        let progress = UIPageControlProgress()
        let page3 = basePage.pkPageProgress(progress)
        #expect(page3.progress != nil)
        
        let page4 = basePage.pkPageProgress { progress }
        #expect(page4.progress != nil)
        #endif
    }
}
#endif
