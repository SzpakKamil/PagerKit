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

The `init(_:content:)` initializer of the ``ForEach`` view in `PagerKit` is designed for collections where the elements conform to the `Identifiable` protocol. This initializer simplifies the creation of a ``ForEach`` view by automatically using the `id` property of the elements as the identifier, eliminating the need to specify a key path explicitly. It is particularly useful when working with data models that already include a unique identifier, enabling concise and type-safe iteration to generate ``PKPage`` views within the `PagerKit` framework.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `data` | `Data` | A collection of elements conforming to `RandomAccessCollection` and `Identifiable`. |
| `content` | `(Data.Element) -> [PKPage]` | A closure that transforms each data element into an array of ``PKPage`` views, built using the ``PKPageBuilder``. |

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
        ForEach(items) { item in
            PKPage {
                Text(item.title)
            }
        }
    }
}
```

## Read Also

### Related Initializers
- ``PagerKit/ForEach/init(_:id:content:)``
