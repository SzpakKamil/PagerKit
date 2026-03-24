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
        
        #if !(os(macOS) || os(watchOS))
        #expect(PKPageControlIndicatorBackgroundStyle.automatic.uiKitValue == .automatic)
        #expect(PKPageControlIndicatorBackgroundStyle.minimal.uiKitValue == .minimal)
        #expect(PKPageControlIndicatorBackgroundStyle.prominent.uiKitValue == .prominent)
        #endif
    }
    
    @Test("PKPageControlIndicatorDirection cases")
    func testPKPageControlIndicatorDirection() {
        let natural = PKPageControlIndicatorDirection.natural
        let ltr = PKPageControlIndicatorDirection.leftToRight
        let rtl = PKPageControlIndicatorDirection.rightToLeft
        
        #expect(natural != ltr)
        #expect(ltr != rtl)
        
        #if !(os(macOS) || os(watchOS))
        if #available(iOS 16.0, tvOS 16.0, *) {
            #expect(PKPageControlIndicatorDirection.natural.uiKitValue == .natural)
            #expect(PKPageControlIndicatorDirection.leftToRight.uiKitValue == .leftToRight)
            #expect(PKPageControlIndicatorDirection.rightToLeft.uiKitValue == .rightToLeft)
        }
        #endif
    }
}
#endif
