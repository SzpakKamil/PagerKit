# ``PagerKit/PKPagesView/init(pages:)-([PKPage])``

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

Initializes a `PKPagesView` with an array of `PKPage` views.

## Overview

The `init(pages:)` initializer of the `PKPagesView` struct in the `PagerKit` framework creates a SwiftUI view that displays a collection of `PKPage` views for page-based navigation. It supports customization through modifiers like `pkPageControlDirection`, `pkPageControlBackgroundStyle`, and `pkCurrentPageIndex` for controlling page control appearance and navigation behavior on iOS, iPadOS, tvOS, macOS, watchOS, and visionOS.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `pages` | `[PKPage]` | An array of `PKPage` views to be displayed in the page view controller. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    @State private var currentPage = 0
    
    var body: some View {
        PKPagesView(pages: [
            PKPage { Text("Page 1").font(.title) },
            PKPage { Text("Page 2").font(.title) },
            PKPage { Text("Page 3").font(.title) }
        ])
        .pkPageControlAlignment(spacing: 10, alignment: .leading)
        .pkPageControlBackgroundStyle(.prominent)
        .pkPageControlDirection(.topToBottom)
        .pkCurrentPageIndex(index: $currentPage)
    }
}
```

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlStyle``
- ``PagerKit/PKPageControlDirection``
- ``PagerKit/PKPageControlBackgroundStyle``
