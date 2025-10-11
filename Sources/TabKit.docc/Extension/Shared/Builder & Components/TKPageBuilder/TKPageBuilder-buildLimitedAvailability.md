# ``TabKit/TKPageBuilder/buildLimitedAvailability(_:)``

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

Builds a block for platform-specific `TKPage` components.


## Overview

The `buildLimitedAvailability(_:)` method in the `TKPageBuilder` result builder handles platform-specific ``TKPage`` components by accepting an array of ``TKPage`` instances and returning them unchanged. This method supports conditional compilation or platform-specific logic within the `TabKit` framework, ensuring that pages are only included when available on the target platform. It is part of the result builder's infrastructure to enable flexible and safe page construction in tab-based navigation.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `component` | `[TKPage]` | An array of ``TKPage`` instances to be included in the result. |

### Example Usage
```swift
import SwiftUI
import TabKit

struct ContentView: View {
    var body: some View {
        TKPagesView{
            if #available(iOS 17.0, *){
                TKPage { Text("Platform-specific Page") }
            }
        }
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
