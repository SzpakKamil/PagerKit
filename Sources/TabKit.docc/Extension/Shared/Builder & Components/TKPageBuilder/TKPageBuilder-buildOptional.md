# ``TabKit/TKPageBuilder/buildOptional(_:)``

Builds a block from an optional array of ``TKPage`` components.

## Overview

The `buildOptional(_:)` method in the ``TKPageBuilder`` result builder handles an optional array of ``TKPage`` instances, returning the array if it exists or an empty array if it is `nil`. This method supports optional content in the `TabKit` framework, enabling developers to conditionally include pages based on runtime conditions while maintaining a consistent result builder interface.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `component` | `[TKPage]?` | An optional array of ``TKPage`` instances to be included in the result. |

### Example Usage
```swift
import SwiftUI
import TabKit

struct ContentView: View {
    let optionalPages: [TKPage]? = [TKPage { Text("Optional Page") }]
    
    var body: some View {
        TKPagesView{
            TKPage { Text("Page1") }
        }
    }
}
```

## Read Also
- ``TabKit/TKPage``
- ``TabKit/TKPageBuilder``
- ``TabKit/TKPageBuilder/buildBlock()``
- ``TabKit/TKPageBuilder/buildBlock(_:)-(TKPage...)``
- ``TabKit/TKPageBuilder/buildBlock(_:)-([TKPage])``
- ``TabKit/TKPageBuilder/buildEither(first:)``
- ``TabKit/TKPageBuilder/buildEither(second:)``
- ``TabKit/TKPageBuilder/buildExpression(_:)``
- ``TabKit/TKPageBuilder/buildLimitedAvailability(_:)``
