# ``PagerKit/PKPageBuilder/buildBlock(_:)-(PKPage...)``

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

Builds a block from variadic `PKPage` components.

## Overview

The `buildBlock(_:)` method in the ``PKPageBuilder`` result builder accepts a variadic number of ``PKPage`` instances and returns them as an array. This method is a core component of the ``PKPageBuilder`` result builder, enabling the creation of multiple ``PKPage`` views in a declarative syntax. It is used to aggregate individual ``PKPage`` components into a single array, which can then be used within the `PagerKit` framework to construct tab-based navigation structures.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `components` | `PKPage...` | A variadic list of `PKPage` instances to be included in the resulting array. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView{
            PKPage { Text("Page 1") }
            PKPage { Text("Page 2") }
        }
    }
}
```

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPageBuilder``
- ``PagerKit/PKPageBuilder/buildBlock()``
- ``PagerKit/PKPageBuilder/buildBlock(_:)-([PKPage])``
- ``PagerKit/PKPageBuilder/buildOptional(_:)``
- ``PagerKit/PKPageBuilder/buildEither(first:)``
- ``PagerKit/PKPageBuilder/buildEither(second:)``
- ``PagerKit/PKPageBuilder/buildExpression(_:)``
- ``PagerKit/PKPageBuilder/buildLimitedAvailability(_:)``
