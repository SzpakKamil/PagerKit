# ``TabKit/TKPageBuilder/buildBlock(_:)-6jnbz``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

Builds a block from an array of ``TKPage`` components.

## Overview

The `buildBlock(_:)-6jnbz` method in the ``TKPageBuilder`` result builder accepts a single array of ``TKPage`` instances and returns it unchanged. This method supports the `TabKit` framework's declarative syntax by allowing developers to pass an array of pages directly, which is useful for constructing tab-based navigation structures from pre-existing collections of ``TKPage`` components.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `components` | `[TKPage]` | An array of ``TKPage`` instances to be included in the result. |

### Example Usage
```swift
import SwiftUI
import TabKit

struct ContentView: View {
    let pages = [TKPage { Text("Page 1") }, TKPage { Text("Page 2") }]
    
    var body: some View {
        TKPagesView(pages: pages)
    }
}
```

## Read Also
- ``TabKit/TKPage``
- ``TabKit/TKPageBuilder``
- ``TabKit/TKPageBuilder/buildBlock()``
- ``TabKit/TKPageBuilder/buildBlock(_:)-(TKPage...)``
- ``TabKit/TKPageBuilder/buildBlock(_:)-([TKPage])``
- ``TabKit/TKPageBuilder/buildOptional(_:)``
- ``TabKit/TKPageBuilder/buildEither(first:)``
- ``TabKit/TKPageBuilder/buildEither(second:)``
- ``TabKit/TKPageBuilder/buildExpression(_:)``
- ``TabKit/TKPageBuilder/buildLimitedAvailability(_:)``
