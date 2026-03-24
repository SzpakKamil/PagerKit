//
//  PKPageModifiersTests.swift
//  PagerKit
//
//  Created by Gemini CLI on 24/03/2026.
//

import SwiftUI
#if canImport(Testing)
import Testing
@testable import PagerKit

#if os(iOS) || os(tvOS) || os(visionOS)
import UIKit

@MainActor
struct PKPageModifiersTests {
    
    @Test("pkPageDuration sets timer progress with correct duration")
    @available(iOS 17.0, tvOS 17.0, *)
    func testPkPageDuration() {
        let duration: Double = 5.0
        let page = PKPage { Text("Duration Test") }
            .pkPageDuration(duration)
        
        // pkPageDuration sets a closure that returns a UIPageControlTimerProgress
        guard let progressClosure = page.progress else {
            #expect(Bool(false), "Progress closure should be set")
            return
        }
        
        let result = progressClosure()
        
        guard let timerProgress = result as? UIPageControlTimerProgress else {
            #expect(Bool(false), "Result should be UIPageControlTimerProgress")
            return
        }
        
        #expect(timerProgress.preferredDuration == duration)
        #expect(timerProgress.resetsToInitialPageAfterEnd == true)
    }

    @Test("pkPageProgress sets specific UIPageControlProgress object")
    @available(iOS 17.0, tvOS 17.0, *)
    func testPkPageProgressObject() {
        let progressObject = UIPageControlProgress()
        
        let page = PKPage { Text("Progress Object Test") }
            .pkPageProgress(progressObject)
        
        guard let progressClosure = page.progress else {
            #expect(Bool(false), "Progress closure should be set")
            return
        }
        
        let result = progressClosure()
        
        // Verify it returns the exact same instance
        #expect(result as? UIPageControlProgress === progressObject)
    }

    @Test("pkPageProgress sets progress via closure")
    @available(iOS 17.0, tvOS 17.0, *)
    func testPkPageProgressClosure() {
        let progressObject = UIPageControlProgress()
        
        let page = PKPage { Text("Progress Closure Test") }
            .pkPageProgress { progressObject }
        
        guard let progressClosure = page.progress else {
            #expect(Bool(false), "Progress closure should be set")
            return
        }
        
        let result = progressClosure()
        
        #expect(result as? UIPageControlProgress === progressObject)
    }
    
    @Test("pkPageProgress with Double closure sets timer progress")
    @available(iOS 17.0, tvOS 17.0, *)
    func testPkPageProgressDoubleClosure() {
        let duration: Double = 3.0
        let page = PKPage { Text("Double Closure Test") }
            .pkPageProgress { duration }
        
        guard let progressClosure = page.progress else {
            #expect(Bool(false), "Progress closure should be set")
            return
        }
        
        let result = progressClosure()
        
        guard let timerProgress = result as? UIPageControlTimerProgress else {
            #expect(Bool(false), "Result should be UIPageControlTimerProgress")
            return
        }
        
        #expect(timerProgress.preferredDuration == duration)
        #expect(timerProgress.resetsToInitialPageAfterEnd == true)
    }
}
#endif
#endif
