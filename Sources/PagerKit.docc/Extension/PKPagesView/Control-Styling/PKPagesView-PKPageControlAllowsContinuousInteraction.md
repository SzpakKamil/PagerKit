# ``PagerKit/PKPagesView/pkPageControlAllowsContinuousInteraction(_:)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

Enables or disables continuous interaction with the page control.

## Overview

The `pkPageControlAllowsContinuousInteraction(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures whether the `UIPageControl` within the `PKPagesView` allows continuous interaction. It sets the `allowsContinuousInteraction` to the specified Boolean value, determining whether users can drag across the page control to change pages rapidly. When set to `true`, dragging across the dots updates the current page continuously; when `false`, interaction is limited to discrete taps on individual dots. This modifier is supported only on iOS and iPadOS, as `allowsContinuousInteraction` is a UIKit-specific feature.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `allows` | `Bool` | A Boolean value that determines whether continuous interaction is enabled (`true`) or disabled (`false`). Defaults to `true`. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1").font(.title) }
            PKPage { Text("Page 2").font(.title) }
            PKPage { Text("Page 3").font(.title) }
        }
        .pkPageControlAllowsContinuousInteraction(false)
        .pkPageControlAlignment(spacing: 15, alignment: .bottom)
        .pkPageControlBackgroundStyle(.prominent)
    }
}
```

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlBackgroundStyle``
- ``PagerKit/PKPageControlDirection``
