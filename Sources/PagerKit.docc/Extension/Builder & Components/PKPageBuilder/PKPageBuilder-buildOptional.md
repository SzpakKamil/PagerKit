# ``PagerKit/PKPageBuilder/buildOptional(_:)``

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

Builds a block from an optional array of ``PKPage`` components.

## Overview

Handles optional arrays of `PKPage` instances, returning the array if present or an empty array if `nil`. Enables conditional inclusion of pages based on runtime conditions.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `component` | `[PKPage]?` | Optional array of `PKPage` instances. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    let optionalPages: [PKPage]? = [PKPage { Text("Optional Page") }]
    
    var body: some View {
        PKPagesView{
            PKPage { Text("Page1").font(.title) }
        }
    }
}
```

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPageBuilder``
- ``PagerKit/PKPageBuilder/buildBlock()``
- ``PagerKit/PKPageBuilder/buildBlock(_:)-(PKPage...)``
- ``PagerKit/PKPageBuilder/buildBlock(_:)-([PKPage])``
- ``PagerKit/PKPageBuilder/buildEither(first:)``
- ``PagerKit/PKPageBuilder/buildEither(second:)``
- ``PagerKit/PKPageBuilder/buildExpression(_:)``
- ``PagerKit/PKPageBuilder/buildLimitedAvailability(_:)``
