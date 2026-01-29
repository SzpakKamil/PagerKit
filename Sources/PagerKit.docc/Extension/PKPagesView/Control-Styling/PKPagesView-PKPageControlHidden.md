# ``PagerKit/PKPagesView/pkPageControlHidden(_:)``

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

Sets the visibility of the page control.

## Overview

The `pkPageControlHidden(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework controls whether the `PageControl` within the `PKPagesView` is visible or hidden. It sets the `isHidden` to the specified Boolean value, determining whether the page control dots are displayed. When set to `true`, the page control is hidden, and when set to `false`, it is visible.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `hidden` | `Bool` | A Boolean value that determines whether the page control is hidden (`true`) or visible (`false`). Defaults to `false`. |

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
        .pkPageControlHidden(true)
    }
}
```

## Preview
## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlBackgroundStyle``
- ``PagerKit/PKPageControlDirection``
