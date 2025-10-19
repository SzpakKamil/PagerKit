# ``PagerKit/PKPagesView/pkPageNavigationOrientation(_:)``

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

Sets the navigation orientation for page transitions.

## Overview

The `pkPageNavigationOrientation(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures the navigation orientation for page transitions. It sets the `orientation` property to either `.horizontal` or `.vertical`, determining whether pages transition side-to-side or up-and-down.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `orientation` | `Axis` | The navigation orientation, either `.horizontal` or `.vertical`. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1").font(.title) }
            PKPage { Text("Page 2").font(.title) }
        }
        .pkPageNavigationOrientation(.vertical)
        .pkPageControlAlignment(spacing: 10, alignment: .leading)
        .pkPageControlBackgroundStyle(.prominent)
    }
}
```

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlDirection``
- ``PagerKit/PKPageControlBackgroundStyle``
