//
//  EnumTests.swift
//  PagerKit
//
//  Created by Gemini CLI on 24/03/2026.
//

import SwiftUI
#if canImport(Testing)
import Testing
@testable import PagerKit

@MainActor
struct EnumTests {
    
    @Test("PKPageDirection cases")
    func testPKPageDirection() {
        let forward = PKPageDirection.forward
        let reverse = PKPageDirection.reverse
        #expect(forward != reverse)
        
        #if !(os(macOS) || os(watchOS))
        #expect(forward.uiKitValue == .forward)
        #expect(reverse.uiKitValue == .reverse)
        #expect(PKPageDirection.caseFor(uiKitValue: .forward) == .forward)
        #expect(PKPageDirection.caseFor(uiKitValue: .reverse) == .reverse)
        #endif
    }
    
    @Test("PKPageControlIndicatorBackgroundStyle cases")
    func testPKPageControlIndicatorBackgroundStyle() {
        #expect(PKPageControlIndicatorBackgroundStyle.automatic.rawValue == 0)
        #expect(PKPageControlIndicatorBackgroundStyle.minimal.rawValue == 1)
        #expect(PKPageControlIndicatorBackgroundStyle.prominent.rawValue == 2)
        
        // Test Identifiable 'id'
        #expect(PKPageControlIndicatorBackgroundStyle.automatic.id == 0)
        #expect(PKPageControlIndicatorBackgroundStyle.minimal.id == 1)
        #expect(PKPageControlIndicatorBackgroundStyle.prominent.id == 2)
        
        #if !(os(macOS) || os(watchOS))
        #expect(PKPageControlIndicatorBackgroundStyle.automatic.uiKitValue == .automatic)
        #expect(PKPageControlIndicatorBackgroundStyle.minimal.uiKitValue == .minimal)
        #expect(PKPageControlIndicatorBackgroundStyle.prominent.uiKitValue == .prominent)
        
        #expect(PKPageControlIndicatorBackgroundStyle.caseFor(uiKitValue: .automatic) == .automatic)
        #expect(PKPageControlIndicatorBackgroundStyle.caseFor(uiKitValue: .minimal) == .minimal)
        #expect(PKPageControlIndicatorBackgroundStyle.caseFor(uiKitValue: .prominent) == .prominent)
        #endif
    }
    
    @Test("PKPageControlIndicatorDirection cases")
    func testPKPageControlIndicatorDirection() {
        let natural = PKPageControlIndicatorDirection.natural
        let ltr = PKPageControlIndicatorDirection.leftToRight
        let rtl = PKPageControlIndicatorDirection.rightToLeft
        let ttb = PKPageControlIndicatorDirection.topToBottom
        let btt = PKPageControlIndicatorDirection.bottomToTop
        
        #expect(natural != ltr)
        #expect(ltr != rtl)
        #expect(ttb != btt)
        
        #if !(os(macOS) || os(watchOS))
        if #available(iOS 16.0, tvOS 16.0, *) {
            // Test uiKitValue
            #expect(PKPageControlIndicatorDirection.natural.uiKitValue == .natural)
            #expect(PKPageControlIndicatorDirection.leftToRight.uiKitValue == .leftToRight)
            #expect(PKPageControlIndicatorDirection.rightToLeft.uiKitValue == .rightToLeft)
            #expect(PKPageControlIndicatorDirection.topToBottom.uiKitValue == .topToBottom)
            #expect(PKPageControlIndicatorDirection.bottomToTop.uiKitValue == .bottomToTop)
            
            // Test caseFor(uiKitValue:)
            #expect(PKPageControlIndicatorDirection.caseFor(uiKitValue: .natural) == .natural)
            #expect(PKPageControlIndicatorDirection.caseFor(uiKitValue: .leftToRight) == .leftToRight)
            #expect(PKPageControlIndicatorDirection.caseFor(uiKitValue: .rightToLeft) == .rightToLeft)
            #expect(PKPageControlIndicatorDirection.caseFor(uiKitValue: .topToBottom) == .topToBottom)
            #expect(PKPageControlIndicatorDirection.caseFor(uiKitValue: .bottomToTop) == .bottomToTop)
        }
        #endif
    }
}
#endif
