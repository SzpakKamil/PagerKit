# ``PagerKit/ForEach/init(_:id:content:)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(tvOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(watchOS, introduced: "10.0")
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

Creates a `ForEach` view that computes views on demand from an underlying collection of data, identified by a key path. Use this initializer when your data elements do not conform to `Identifiable` or when you need to specify a specific property for uniqueness.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `data` | `Data` | A collection of elements conforming to `RandomAccessCollection`. |
| `id` | `KeyPath<Data.Element, ID>` | Key path to a hashable property for identification. |
| `content` | `(Data.Element) -> [PKPage]` | A closure transforming each element into an array of `PKPage` views. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct Item {
    let name: String
    let uniqueId: Int
}

struct ContentView: View {
    let items = [Item(name: "Home", uniqueId: 1), Item(name: "Profile", uniqueId: 2), Item(name: "Settings", uniqueId: 3)]
    
    var body: some View {
        PKPagesView {
            ForEach(items, id: \.uniqueId) { item in
                PKPage {
                    Text(item.name)
                }
            }
        }
    }
}
```

## Read Also

### Related Initializers
- ``PagerKit/ForEach/init(_:content:)``
