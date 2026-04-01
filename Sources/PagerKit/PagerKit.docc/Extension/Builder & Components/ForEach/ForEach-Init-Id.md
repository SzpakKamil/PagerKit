# ``PagerKit/ForEach/init(_:content:)``

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


Init for identifiable components

## Overview

Creates a `ForEach` view that computes views on demand from an underlying collection of identifiable data. This initializer automatically uses the `id` property of the elements, eliminating the need for an explicit key path. Use this to generate `PKPage` views from data models that conform to `Identifiable`.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `data` | `Data` | A collection of identifiable elements conforming to `RandomAccessCollection`. |
| `content` | `(Data.Element) -> [PKPage]` | A closure transforming each element into an array of `PKPage` views. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct Item: Identifiable {
    let id = UUID()
    let title: String
}

struct ContentView: View {
    let items = [Item(title: "Home"), Item(title: "Profile"), Item(title: "Settings")]
    
    var body: some View {
        PKPagesView {
            ForEach(items) { item in
                PKPage {
                    Text(item.title)
                }
            }
        }
    }
}
```

## Read Also

### Related Initializers
- ``PagerKit/ForEach/init(_:id:content:)``
