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

The `pkOnAutoPageChange(action:)` modifier of the `PKPagesView` struct in the `PagerKit` framework sets a closure that is called when the page changes automatically (e.g., via timer or animation). The closure receives the current page index and the transition direction (`PKPageDirection`), enabling custom logic for automatic navigation.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `action` | `@escaping (Int, PKPageDirection) -> Void` | A closure executed on automatic page change, providing the current index and direction. |

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
        .pkOnAutoPageChange { currentIndex, direction in
            print("Auto change to page \(currentIndex) in \(direction)")
        }
    }
}
```

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlDirection``
- ``PagerKit/PKPageControlBackgroundStyle``
- ``PagerKit/PKPageDirection``
