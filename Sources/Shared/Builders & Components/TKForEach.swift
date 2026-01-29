//
//  TKPage.swift
//  TabKit
//
//  Created by Kamil Szpak on 30/09/2025.
//

import SwiftUI

public struct ForEach<Data, ID>: View where Data: RandomAccessCollection, ID: Hashable {
    let data: Data
    let keyPath: KeyPath<Data.Element, ID>
    let content: ((Data.Element) -> [TKPage])?
    @_documentation(visibility: internal)
    public var components: [TKPage] {
        data.flatMap { content?($0) ?? [] }
    }
    @_documentation(visibility: internal)
    public var body: some View{
        if !components.isEmpty{
            SwiftUI.ForEach(components.indices, id: \.self){index in
                AnyView(components[index].content)
            }
        }else{
            EmptyView()
        }

    }
    
    // Prefer pages init over content init when both match by disfavoring this overloads
    @_disfavoredOverload
    public init(_ data: Data, id: KeyPath<Data.Element, ID>, @TKPageBuilder content: @escaping (Data.Element) -> [TKPage]) {
        self.data = data
        self.keyPath = id
        self.content = content
    }
    
    // Prefer pages init over content init when both match by disfavoring this overloads
    @_disfavoredOverload
    public init<T>(_ data: Data, @TKPageBuilder content: @escaping (Data.Element) -> [TKPage])
    where Data.Element == T, T: Identifiable, ID == T.ID {
        self.data = data
        self.keyPath = \T.id
        self.content = content
    }
}
