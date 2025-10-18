# ``PagerKit/PKPageBuilder/buildLimitedAvailability(_:)``

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

Builds a block for platform-specific `PKPage` components.


## Overview

The `buildLimitedAvailability(_:)` method in the `PKPageBuilder` result builder handles platform-specific ``PKPage`` components by accepting an array of ``PKPage`` instances and returning them unchanged. This method supports conditional compilation or platform-specific logic within the `PagerKit` framework, ensuring that pages are only included when available on the target platform. It is part of the result builder's infrastructure to enable flexible and safe page construction in tab-based navigation.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `component` | `[PKPage]` | An array of ``PKPage`` instances to be included in the result. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView{
            if #available(iOS 17.0, *){
                PKPage { Text("Platform-specific Page") }
            }
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
- ``PagerKit/PKPageBuilder/buildOptional(_:)``
- ``PagerKit/PKPageBuilder/buildEither(first:)``
- ``PagerKit/PKPageBuilder/buildEither(second:)``
- ``PagerKit/PKPageBuilder/buildExpression(_:)``
