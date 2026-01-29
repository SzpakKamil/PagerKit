//
//  PKPageBuilder.swift
//  PagerKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

import SwiftUI

@resultBuilder
public struct PKPageBuilder {
    public static func buildBlock() -> [PKPage] {
        []
    }
    
    public static func buildBlock(_ components: PKPage...) -> [PKPage] {
        components
    }
    
    public static func buildBlock(_ components: [PKPage]) -> [PKPage] {
        components
    }
    
    @_documentation(visibility: internal)
    public static func buildBlock(_ components: [PKPage]...) -> [PKPage] {
        components.flatMap { $0 }
    }
    
    public static func buildOptional(_ component: [PKPage]?) -> [PKPage] {
        component ?? []
    }
    
    public static func buildEither(first component: [PKPage]) -> [PKPage] {
        component
    }
    
    public static func buildEither(second component: [PKPage]) -> [PKPage] {
        component
    }
    @_documentation(visibility: internal)
    public static func buildExpression<Data, ID>(_ forEach: ForEach<Data, ID>) -> [PKPage] where Data: RandomAccessCollection, ID: Hashable {
        forEach.components
    }
    public static func buildLimitedAvailability(_ component: [PKPage]) -> [PKPage] {
        component
    }
    
    public static func buildExpression(_ components: PKPage...) -> [PKPage] {
        return components
    }
}
