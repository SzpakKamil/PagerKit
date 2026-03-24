//
//  PKPageBuilderTests.swift
//  PagerKit
//
//  Created by Gemini CLI on 24/03/2026.
//

import SwiftUI
#if canImport(Testing)
import Testing
@testable import PagerKit

@MainActor
struct PKPageBuilderTests {
    
    // MARK: - Helpers
    
    struct IdentifiableItem: Identifiable {
        let id: Int
        let name: String
    }
    
    @PKPageBuilder
    func extensiveTest(condition: Bool) -> [PKPage] {
        PKPage { Text("Static 1") }
        if condition {
            PKPage { Text("Condition True") }
        } else {
            PKPage { Text("Condition False") }
        }
        
        if condition {
            PKPage { Text("Optional True") }
        }
        
        if #available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *) {
            PKPage { Text("Available") }
        }
    }
    
    // MARK: - Tests
    
    @Test("Extensive PKPageBuilder logic")
    func testExtensiveBuilder() {
        let pagesTrue = extensiveTest(condition: true)
        // 1 (static) + 1 (if true) + 1 (optional true) + 1 (available) = 4
        #expect(pagesTrue.count == 4)
        
        let pagesFalse = extensiveTest(condition: false)
        // 1 (static) + 1 (if false) + 0 (optional false) + 1 (available) = 3
        #expect(pagesFalse.count == 3)
    }
    
    @Test("PKPageBuilder empty block")
    func testEmptyBlock() {
        let pages = PKPageBuilder.buildBlock()
        #expect(pages.isEmpty)
    }
    
    @Test("PKPageBuilder multiple components")
    func testMultipleComponents() {
        let pages = PKPageBuilder.buildBlock(
            PKPage { Text("1") },
            PKPage { Text("2") },
            PKPage { Text("3") }
        )
        #expect(pages.count == 3)
    }
    
    @Test("PKPageBuilder buildEither")
    func testBuildEither() {
        let first = PKPageBuilder.buildEither(first: [PKPage { Text("First") }])
        #expect(first.count == 1)
        
        let second = PKPageBuilder.buildEither(second: [PKPage { Text("Second") }])
        #expect(second.count == 1)
    }
    
    @Test("PKPageBuilder buildOptional")
    func testBuildOptional() {
        let some = PKPageBuilder.buildOptional([PKPage { Text("Some") }])
        #expect(some.count == 1)
        
        let none = PKPageBuilder.buildOptional(nil)
        #expect(none.isEmpty)
    }
    
    @Test("PKPageBuilder buildLimitedAvailability")
    func testBuildLimitedAvailability() {
        let pages = PKPageBuilder.buildLimitedAvailability([PKPage { Text("Limited") }])
        #expect(pages.count == 1)
    }
    
    @Test("PKPageBuilder buildExpression with ForEach (Explicit ID)")
    func testBuildExpressionForEachExplicit() {
        let data = ["A", "B", "C"]
        let forEach = ForEach(data, id: \.self) { item in
            PKPage { Text(item) }
        }
        let pages = PKPageBuilder.buildExpression(forEach)
        #expect(pages.count == 3)
    }
    
    @Test("PKPageBuilder buildExpression with ForEach (Inferred Identifiable ID)")
    func testBuildExpressionForEachIdentifiable() {
        let data = [
            IdentifiableItem(id: 1, name: "One"),
            IdentifiableItem(id: 2, name: "Two")
        ]
        // Testing inference of Identifiable id
        let forEach = ForEach(data) { item in
            PKPage { Text(item.name) }
        }
        let pages = PKPageBuilder.buildExpression(forEach)
        #expect(pages.count == 2)
    }
}
#endif
