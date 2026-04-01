# ``PagerKit/PKPagesView/pkOnAutoPageChange(action:)-((Int,PKPageDirection)->Void)``

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

Executes a closure on automatic page change with current index and direction.

## Overview

Triggers a closure when the page changes automatically (e.g., via timer). Provides the new index and direction.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `action` | `(Int, PKPageDirection) -> Void` | Closure with new index and direction. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1") }.pkPageDuration(2.0)
            PKPage { Text("Page 2") }
        }
        .pkOnAutoPageChange { index, direction in
            print("Auto-advanced to \(index) via \(direction)")
        }
    }
}
```

## Read Also
- ``PagerKit/PKPageDirection``
