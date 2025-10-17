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

The `buildOptional(_:)` method in the ``PKPageBuilder`` result builder handles an optional array of ``PKPage`` instances, returning the array if it exists or an empty array if it is `nil`. This method supports optional content in the `PagerKit` framework, enabling developers to conditionally include pages based on runtime conditions while maintaining a consistent result builder interface.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `component` | `[PKPage]?` | An optional array of ``PKPage`` instances to be included in the result. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    let optionalPages: [PKPage]? = [PKPage { Text("Optional Page") }]
    
    var body: some View {
        PKPagesView{
            PKPage { Text("Page1") }
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
