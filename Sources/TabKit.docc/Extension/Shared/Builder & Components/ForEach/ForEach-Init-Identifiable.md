# ``TabKit/ForEach/init(_:id:content:)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(tvOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}

@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}


Init with manual id passing.

## Overview

The `init(_:id:content:)` initializer of the ``ForEach`` view in `TabKit` is designed for collections where elements do not necessarily conform to the `Identifiable` protocol. This initializer allows developers to explicitly specify a key path to a hashable property of the data elements to use as the identifier. It provides flexibility for iterating over custom data types in the `TabKit` framework, generating an array of `TKPage` views for each element in the collection. This initializer is particularly useful when working with data models that lack a built-in `id` property or when a specific property should be used for identification.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `data` | `Data` | A collection of elements conforming to `RandomAccessCollection`. |
| `id` | `KeyPath<Data.Element, ID>` | A key path to a hashable property used to uniquely identify each element. |
| `content` | `(Data.Element) -> [TKPage]` | A closure that transforms each data element into an array of ``TKPage`` views, built using the ``TKPageBuilder``. |

### Example Usage
```swift
import SwiftUI
import TabKit

struct Item {
    let name: String
    let uniqueId: Int
}

struct ContentView: View {
    let items = [Item(name: "Home", uniqueId: 1), Item(name: "Profile", uniqueId: 2), Item(name: "Settings", uniqueId: 3)]
    
    var body: some View {
        ForEach(items, id: \.uniqueId) { item in
            TKPage {
                Text(item.name)
            }
        }
    }
}
```

## Read Also

### Related Initializers
- ``TabKit/ForEach/init(_:content:)``
