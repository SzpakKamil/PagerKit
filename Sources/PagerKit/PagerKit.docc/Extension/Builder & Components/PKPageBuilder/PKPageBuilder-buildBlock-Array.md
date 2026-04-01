# ``PagerKit/PKPageBuilder/buildBlock(_:)-([PKPage])``

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

Builds a block from an array of ``PKPage`` components.

## Overview

Passes an array of `PKPage` instances through the result builder unchanged. Use this for constructing navigation structures from pre-existing collections of pages.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `components` | `[PKPage]` | Array of `PKPage` instances. |

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
