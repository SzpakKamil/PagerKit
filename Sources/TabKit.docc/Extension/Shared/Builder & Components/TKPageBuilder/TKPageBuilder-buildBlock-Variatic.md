# ``TabKit/TKPageBuilder/buildBlock(_:)-(TKPage...)``

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

Builds a block from variadic `TKPage` components.

## Overview

The `buildBlock(_:)` method in the ``TKPageBuilder`` result builder accepts a variadic number of ``TKPage`` instances and returns them as an array. This method is a core component of the ``TKPageBuilder`` result builder, enabling the creation of multiple ``TKPage`` views in a declarative syntax. It is used to aggregate individual ``TKPage`` components into a single array, which can then be used within the `TabKit` framework to construct tab-based navigation structures.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `components` | `TKPage...` | A variadic list of `TKPage` instances to be included in the resulting array. |

### Example Usage
```swift
import SwiftUI
import TabKit

struct ContentView: View {
    var body: some View {
        TKPagesView{
            TKPage { Text("Page 1") }
            TKPage { Text("Page 2") }
        }
    }
}
```

## Read Also
- ``TabKit/TKPage``
- ``TabKit/TKPageBuilder``
- ``TabKit/TKPageBuilder/buildBlock()``
- ``TabKit/TKPageBuilder/buildBlock(_:)-([TKPage])``
- ``TabKit/TKPageBuilder/buildOptional(_:)``
- ``TabKit/TKPageBuilder/buildEither(first:)``
- ``TabKit/TKPageBuilder/buildEither(second:)``
- ``TabKit/TKPageBuilder/buildExpression(_:)``
- ``TabKit/TKPageBuilder/buildLimitedAvailability(_:)``
