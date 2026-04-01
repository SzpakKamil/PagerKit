# ``PagerKit/PKPagesView/init(pages:)-(()->[PKPage])``

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

Initializes a `PKPagesView` with a `PKPageBuilder` closure.

## Overview

Creates a `PKPagesView` using a declarative `@PKPageBuilder` closure to define the pages. Supports all standard modifiers for customization.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `pages` | `() -> [PKPage]` | Closure returning an array of `PKPage` views. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    @State private var currentPage = 0
    
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1") }
            PKPage { Text("Page 2") }
        }
        .pkCurrentPageIndex(index: $currentPage)
    }
}
```

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorDirection``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
