# ``PagerKit/PKPagesView/pkOnAutoPageChange(action:)-((Int,Int)->Void)``

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

Executes a closure on automatic page change with previous and current indices.

## Overview

Triggers a closure when the page changes automatically. Provides the previous and current indices.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `action` | `(Int, Int) -> Void` | Closure with previous and current indices. |

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
        .pkOnAutoPageChange { prev, curr in
            print("Auto-advanced from \(prev) to \(curr)")
        }
    }
}
```
