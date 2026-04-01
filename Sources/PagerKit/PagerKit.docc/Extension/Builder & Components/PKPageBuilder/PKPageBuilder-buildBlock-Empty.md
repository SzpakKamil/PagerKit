# ``PagerKit/PKPageBuilder/buildBlock()``

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

Builds an empty block of ``PKPage`` components.

## Overview

Returns an empty array of `PKPage` instances. Used as a fallback when no components are provided, ensuring a valid return value.

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView{}
    }
}
```

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPageBuilder``
- ``PagerKit/PKPageBuilder/buildBlock(_:)-(PKPage...)``
- ``PagerKit/PKPageBuilder/buildBlock(_:)-([PKPage])``
- ``PagerKit/PKPageBuilder/buildOptional(_:)``
- ``PagerKit/PKPageBuilder/buildEither(first:)``
- ``PagerKit/PKPageBuilder/buildEither(second:)``
- ``PagerKit/PKPageBuilder/buildExpression(_:)``
- ``PagerKit/PKPageBuilder/buildLimitedAvailability(_:)``
