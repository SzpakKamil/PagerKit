# ``PagerKit/PKPageBuilder/buildBlock(_:)-6jnbz``

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
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

Builds a block from an array of ``PKPage`` components.

## Overview

The `buildBlock(_:)-6jnbz` method in the ``PKPageBuilder`` result builder accepts a single array of ``PKPage`` instances and returns it unchanged. This method supports the `PagerKit` framework's declarative syntax by allowing developers to pass an array of pages directly, which is useful for constructing tab-based navigation structures from pre-existing collections of ``PKPage`` components.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `components` | `[PKPage]` | An array of ``PKPage`` instances to be included in the result. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    let pages = [PKPage { Text("Page 1") }, PKPage { Text("Page 2") }]
    
    var body: some View {
        PKPagesView(pages: pages)
    }
}
```

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPageBuilder``
- ``PagerKit/PKPageBuilder/buildBlock()``
- ``PagerKit/PKPageBuilder/buildBlock(_:)-(PKPage...)``
- ``PagerKit/PKPageBuilder/buildBlock(_:)-([PKPage])``
- ``PagerKit/PKPageBuilder/buildOptional(_:)``
- ``PagerKit/PKPageBuilder/buildEither(first:)``
- ``PagerKit/PKPageBuilder/buildEither(second:)``
- ``PagerKit/PKPageBuilder/buildExpression(_:)``
- ``PagerKit/PKPageBuilder/buildLimitedAvailability(_:)``
