# ``PagerKit/PKPageBuilder/buildExpression(_:)``

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

Builds a block from variadic `PKPage` expressions.

## Overview

Converts a variadic list of `PKPage` instances into an array. Enables processing of individual page components or expressions within `PKPageBuilder`.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `components` | `PKPage...` | Variadic list of `PKPage` instances. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView{
            PKPage { Text("First Page") }
        }
    }
}
```

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPageBuilder``
- ``PagerKit/PKPageBuilder/buildBlock()``
- ``PagerKit/PKPageBuilder/buildBlock(_:)-(PKPage...)``
- ``PagerKit/PKPageBuilder/buildOptional(_:)``
- ``PagerKit/PKPageBuilder/buildEither(first:)``
- ``PagerKit/PKPageBuilder/buildEither(second:)``
- ``PagerKit/PKPageBuilder/buildExpression(_:)``
- ``PagerKit/PKPageBuilder/buildLimitedAvailability(_:)``
