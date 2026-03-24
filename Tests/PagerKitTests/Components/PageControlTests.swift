//
//  PKPagesControlViewTests.swift
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
struct PKPagesControlViewTests {

    @Test("Test indicies for different directions")
    func testIndicies() {
        var style = PKPageControlStyle()
        
        // Natural / LTR / TopToBottom
        style.direction = .leftToRight
        let viewLTR = PKPagesControlView(
            currentSelectedElement: .constant(0),
            progress: nil,
            duration: nil,
            numberOfElements: 5,
            style: style
        )
        #expect(viewLTR.indicies == [0, 1, 2, 3, 4])
        
        style.direction = .topToBottom
        let viewTTB = PKPagesControlView(
            currentSelectedElement: .constant(0),
            progress: nil,
            duration: nil,
            numberOfElements: 5,
            style: style
        )
        #expect(viewTTB.indicies == [0, 1, 2, 3, 4])
        
        // RTL / BottomToTop
        style.direction = .rightToLeft
        let viewRTL = PKPagesControlView(
            currentSelectedElement: .constant(0),
            progress: nil,
            duration: nil,
            numberOfElements: 5,
            style: style
        )
        #expect(viewRTL.indicies == [4, 3, 2, 1, 0])
        
        style.direction = .bottomToTop
        let viewBTT = PKPagesControlView(
            currentSelectedElement: .constant(0),
            progress: nil,
            duration: nil,
            numberOfElements: 5,
            style: style
        )
        #expect(viewBTT.indicies == [4, 3, 2, 1, 0])
    }

    @Test("Test visibleItems logic - small count")
    func testVisibleItemsSmall() {
        var style = PKPageControlStyle()
        style.direction = .leftToRight
        
        // All elements should be visible if count <= 7 (full size window)
        let view = PKPagesControlView(
            currentSelectedElement: .constant(2),
            progress: nil,
            duration: nil,
            numberOfElements: 5,
            style: style
        )
        let items = view.visibleItems()
        #expect(items.count == 5)
        #expect(items.map { $0.index } == [0, 1, 2, 3, 4])
        #expect(items.allSatisfy { $0.scale == 1.0 })
    }

    @Test("Test visibleItems logic - at start")
    func testVisibleItemsAtStart() {
        var style = PKPageControlStyle()
        style.direction = .leftToRight
        
        // 10 elements, current=0
        // Expected full size: 0, 1, 2, 3, 4, 5, 6
        // Scaled: 7 (0.75), 8 (0.5)
        let view = PKPagesControlView(
            currentSelectedElement: .constant(0),
            progress: nil,
            duration: nil,
            numberOfElements: 10,
            style: style
        )
        let items = view.visibleItems()
        #expect(items.count == 9)
        #expect(items.map { $0.index } == [0, 1, 2, 3, 4, 5, 6, 7, 8])
        #expect(items[0...6].allSatisfy { $0.scale == 1.0 })
        #expect(items[7].scale == 0.75)
        #expect(items[8].scale == 0.5)
    }

    @Test("Test visibleItems logic - in middle")
    func testVisibleItemsInMiddle() {
        var style = PKPageControlStyle()
        style.direction = .leftToRight
        
        // 20 elements, current=10
        // Expected full size window: 5, 6, 7, 8, 9, 10, 11
        // Neighbors: 4, 12 (0.75), 3, 13 (0.5)
        let view = PKPagesControlView(
            currentSelectedElement: .constant(10),
            progress: nil,
            duration: nil,
            numberOfElements: 20,
            style: style
        )
        let items = view.visibleItems()
        #expect(items.map { $0.index } == [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13])
        #expect(items[0].scale == 0.5)
        #expect(items[1].scale == 0.75)
        #expect(items[2...8].allSatisfy { $0.scale == 1.0 })
        #expect(items[9].scale == 0.75)
        #expect(items[10].scale == 0.5)
    }

    @Test("Test visibleItems logic - at end")
    func testVisibleItemsAtEnd() {
        var style = PKPageControlStyle()
        style.direction = .leftToRight
        
        // 10 elements, current=9
        // availableLeft=9, availableRight=0
        // leftCount=min(5, 9)=5, rightCount=0
        // if rightCount < 1: deficit=1, extra=min(1, 4)=1 -> leftCount=6
        // Full size: [3, 4, 5, 6, 7, 8, 9]
        // Neighbors: [1, 2] (scaled)
        let view = PKPagesControlView(
            currentSelectedElement: .constant(9),
            progress: nil,
            duration: nil,
            numberOfElements: 10,
            style: style
        )
        let items = view.visibleItems()
        #expect(items.count == 9)
        #expect(items.map { $0.index } == [1, 2, 3, 4, 5, 6, 7, 8, 9])
        #expect(items[0].scale == 0.5)
        #expect(items[1].scale == 0.75)
        #expect(items[2...8].allSatisfy { $0.scale == 1.0 })
    }

    @Test("Test visibleItems logic - RTL")
    func testVisibleItemsRTL() {
        var style = PKPageControlStyle()
        style.direction = .rightToLeft
        
        // indices: [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
        // current=9 (pos 0)
        // availableLeft=0, availableRight=9
        // leftCount=0, rightCount=6
        // Full size: [9, 8, 7, 6, 5, 4, 3]
        // Scaled: [2, 1]
        let view = PKPagesControlView(
            currentSelectedElement: .constant(9),
            progress: nil,
            duration: nil,
            numberOfElements: 10,
            style: style
        )
        let items = view.visibleItems()
        #expect(items.map { $0.index } == [9, 8, 7, 6, 5, 4, 3, 2, 1])
        #expect(items[0...6].allSatisfy { $0.scale == 1.0 })
        #expect(items[7].scale == 0.75)
        #expect(items[8].scale == 0.5)
    }

    @Test("Test visibleItems logic - currentSelectedElement out of bounds")
    func testVisibleItemsOutOfBounds() {
        let style = PKPageControlStyle()
        
        // currentSelectedElement = 10, but only 5 elements (0-4)
        let view = PKPagesControlView(
            currentSelectedElement: .constant(10),
            progress: nil,
            duration: nil,
            numberOfElements: 5,
            style: style
        )
        let items = view.visibleItems()
        
        // Should trigger fallback: return current only
        #expect(items.count == 1)
        #expect(items.first?.index == 10)
        #expect(items.first?.scale == 1.0)
    }

    @Test("Test visibleItems logic - empty elements")
    func testVisibleItemsEmpty() {
        let view = PKPagesControlView(
            currentSelectedElement: .constant(0),
            progress: nil,
            duration: nil,
            numberOfElements: 0,
            style: PKPageControlStyle()
        )
        #expect(view.visibleItems().isEmpty)
    }

    @Test("Test invertedPrimary color")
    func testInvertedPrimary() {
        var style = PKPageControlStyle()
        
        style.backgroundStyle = .automatic
        let viewAuto = PKPagesControlView(currentSelectedElement: .constant(0), progress: nil, duration: nil, numberOfElements: 1, style: style)
        #expect(viewAuto.invertedPrimary == .clear)
        
        style.backgroundStyle = .minimal
        let viewMinimal = PKPagesControlView(currentSelectedElement: .constant(0), progress: nil, duration: nil, numberOfElements: 1, style: style)
        #expect(viewMinimal.invertedPrimary == .clear)
        
        style.backgroundStyle = .prominent
        let viewProminent = PKPagesControlView(currentSelectedElement: .constant(0), progress: nil, duration: nil, numberOfElements: 1, style: style)
        #expect(viewProminent.invertedPrimary != .clear)
    }
}

#endif
#endif
