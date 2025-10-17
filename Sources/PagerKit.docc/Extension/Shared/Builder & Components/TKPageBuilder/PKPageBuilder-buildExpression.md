# ``PagerKit/PKPageBuilder/buildExpression(_:)``

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

Builds a block from variadic `PKPage` expressions.

## Overview

The `buildExpression(_:)` method in the `PKPageBuilder` result builder accepts a variadic number of ``PKPage`` instances and returns them as an array. This method enables the `PagerKit` framework to process individual ``PKPage`` components or expressions, converting them into a consistent array format for use in tab-based navigation structures. It is a key part of the result builder's ability to handle single or multiple page expressions in a declarative manner.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `components` | `PKPage...` | A variadic list of ``PKPage`` instances to be included in the resulting array. |

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
