# ``PagerKit/PKPagesView/pkOnManualPageChange(action:)-((Int,PKPageDirection)->Void)``

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

Executes a closure on manual page change with current index and direction.

## Overview

Triggers a closure when the user manually changes the page (swipe/tap). Provides the new index and direction.

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
            PKPage { Text("Page 1") }
            PKPage { Text("Page 2") }
        }
        .pkOnManualPageChange { index, direction in
            print("Swiped to \(index) via \(direction)")
        }
    }
}
```
