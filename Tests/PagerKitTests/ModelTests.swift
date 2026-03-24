//
//  ModelTests.swift
//  PagerKit
//
//  Created by Gemini CLI on 24/03/2026.
//

import SwiftUI
#if canImport(Testing)
import Testing
@testable import PagerKit

@MainActor
struct ModelTests {
    
    // MARK: - PKPageOptions
    
    @Test("PKPageOptions initialization and orientation")
    func testPKPageOptions() {
        let pages = [PKPage { Text("1") }]
        let options = PKPageOptions(pages: pages)
        
        #expect(options.pages.count == 1)
        #expect(options.orientationRaw == .horizontal)
        
        #if !(os(macOS) || os(watchOS))
        #expect(options.orientation == .horizontal)
        #else
        #expect(options.orientation == .horizontal)
        #endif
        
        options.orientationRaw = .vertical
        #if !(os(macOS) || os(watchOS))
        #expect(options.orientation == .vertical)
        #else
        #expect(options.orientation == .vertical)
        #endif
    }
    
    // MARK: - PKPageControlStyle
    
    @Test("PKPageControlStyle defaults")
    func testPKPageControlStyleDefaults() {
        let style = PKPageControlStyle()
        
        #expect(style.hidden == false)
        #expect(style.hidesForSinglePage == true)
        #expect(style.backgroundStyle == .automatic)
        #expect(style.allowsContinuousInteraction == true)
        #expect(style.indicatorAlignment == .bottom)
        #expect(style.footerAlignment == .bottomLeading)
        
        #if os(watchOS)
        #expect(style.indicatorSpacing == 20)
        #else
        #expect(style.indicatorSpacing == 12)
        #endif
    }
    
    @Test("PKPageControlStyle color conversion")
    func testPKPageControlStyleColors() {
        var style = PKPageControlStyle()
        style.indicatorTintColor = .red
        style.currentPageIndicatorTintColor = .blue
        
        #if os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
        #expect(style.indicatorTintUIColor != nil)
        #expect(style.currentPageIndicatorTintUIColor != nil)
        #elseif os(macOS)
        #expect(style.indicatorTintUIColor != nil)
        #expect(style.currentPageIndicatorTintUIColor != nil)
        #endif
    }
}
#endif
