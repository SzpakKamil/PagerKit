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

Creates a `PKPagesView` from an existing array of `PKPage` objects. Useful for dynamic content generated programmatically.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `pages` | `[PKPage]` | Array of `PKPage` views. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    let myPages = [
        PKPage { Text("Page 1") },
        PKPage { Text("Page 2") }
    ]
    
    var body: some View {
        PKPagesView(pages: myPages)
            .pkPageControlIndicatorBackgroundStyle(.prominent)
    }
}
```

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorDirection``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
