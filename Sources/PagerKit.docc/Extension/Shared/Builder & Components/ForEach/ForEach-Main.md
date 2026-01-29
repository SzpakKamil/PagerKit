# ``PagerKit/ForEach``

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


Component for iterating over elements  

## Overview

The `ForEach` view in `PagerKit` is a SwiftUI component designed for iterating over a collection of data to generate an array of ``PKPage`` views. It leverages SwiftUI's dynamic view creation to render content based on the provided data, with support for identifiable elements or custom key paths for identification. The view is optimized for use within the `PagerKit` framework, enabling seamless integration with tab-based navigation structures. The `ForEach` component is particularly useful for creating dynamic tab content, where each element in the data collection maps to one or more ``PKPage`` instances.

### Properties Grid
| Property Name | Type | Description |
|---------------|------|-------------|
| `data` | `Data` | The collection of elements to iterate over, conforming to `RandomAccessCollection`. |
| `keyPath` | `KeyPath<Data.Element, ID>` | A key path to a hashable property used to identify elements in the data collection. |
| `content` | `(Data.Element) -> [PKPage]` | A closure that transforms each data element into an array of ``PKPage`` views. |
| `components` | `[PKPage]` | A computed property that flattens the results of the content closure into an array of ``PKPage`` views. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    let items = ["Home", "Profile", "Settings"]
    
    var body: some View {
        PKPages{
            ForEach(items, id: \.self) { item in
                PKPage {
                    Text(item)
                }
            }
        }
    }
}
```

## Topics

### Initializers
- ``PagerKit/ForEach/init(_:id:content:)``
- ``PagerKit/ForEach/init(_:content:)``
