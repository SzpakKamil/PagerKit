//
//  TKPageBuilder.swift
//  TabKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

import SwiftUI

@resultBuilder
public struct TKPageBuilder {
    public static func buildBlock() -> [TKPage] {
        []
    }
    
    public static func buildBlock(_ components: TKPage...) -> [TKPage] {
        components
    }
    
    public static func buildBlock(_ components: [TKPage]) -> [TKPage] {
        components
    }
    
    public static func buildBlock(_ components: [TKPage]...) -> [TKPage] {
        components.flatMap { $0 }
    }
    
    public static func buildOptional(_ component: [TKPage]?) -> [TKPage] {
        component ?? []
    }
    
    public static func buildEither(first component: [TKPage]) -> [TKPage] {
        component
    }
    
    public static func buildEither(second component: [TKPage]) -> [TKPage] {
        component
    }
    
    public static func buildLimitedAvailability(_ component: [TKPage]) -> [TKPage] {
        component
    }
    
    public static func buildExpression(_ components: TKPage...) -> [TKPage] {
        return components
    }
}
