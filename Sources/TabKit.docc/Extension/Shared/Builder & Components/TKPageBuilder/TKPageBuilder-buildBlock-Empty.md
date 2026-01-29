# ``TabKit/TKPageBuilder/buildBlock()``

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

Builds an empty block of ``TKPage`` components.

## Overview

The `buildBlock()` method in the `TKPageBuilder` result builder returns an empty array of ``TKPage`` instances. This method is used as a fallback when no components are provided in a ``TKPageBuilder`` context, ensuring that the result builder always returns a valid array, even in the absence of content. It supports the declarative syntax of the `TabKit` framework by providing a consistent interface for constructing tab-based navigation structures.

### Example Usage
```swift
import SwiftUI
import TabKit

struct ContentView: View {
    var body: some View {
        TKPagesView{}
    }
}
```

## Read Also
- ``TabKit/TKPage``
- ``TabKit/TKPageBuilder``
- ``TabKit/TKPageBuilder/buildBlock(_:)-(TKPage...)``
- ``TabKit/TKPageBuilder/buildBlock(_:)-([TKPage])``
- ``TabKit/TKPageBuilder/buildOptional(_:)``
- ``TabKit/TKPageBuilder/buildEither(first:)``
- ``TabKit/TKPageBuilder/buildEither(second:)``
- ``TabKit/TKPageBuilder/buildExpression(_:)``
- ``TabKit/TKPageBuilder/buildLimitedAvailability(_:)``
