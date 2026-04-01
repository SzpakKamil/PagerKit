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

Iterate over a collection to generate `PKPage` views. `ForEach` leverages SwiftUI's dynamic view creation to render content based on data, supporting both `Identifiable` elements and manual key paths. It maps each element in the collection to one or more `PKPage` instances.

### Properties Grid
| Property Name | Type | Description |
|---------------|------|-------------|
| `data` | `Data` | The collection to iterate over (`RandomAccessCollection`). |
| `keyPath` | `KeyPath<Data.Element, ID>` | Key path to a hashable identifier property. |
| `content` | `(Data.Element) -> [PKPage]` | Closure transforming each element into `PKPage` views. |
| `components` | `[PKPage]` | Flattened array of resulting `PKPage` views. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    let items = ["Home", "Profile", "Settings"]
    
    var body: some View {
        PKPagesView {
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
