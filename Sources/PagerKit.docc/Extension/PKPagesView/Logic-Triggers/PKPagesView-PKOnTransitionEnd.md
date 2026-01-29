# ``PagerKit/PKPagesView/pkOnTransitionStart(action:)``

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

Executes a closure on manual page change with previous and current indices.

## Overview

The `pkOnManualPageChange(action:)` modifier of the `PKPagesView` struct in the `PagerKit` framework sets a closure that is called when the page changes manually (e.g., via swipe or tap). The closure receives the previous and current page indices, enabling custom logic for user-initiated navigation. 

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `action` | `@escaping (Int, Int) -> Void` | A closure executed on manual page change, providing the previous and current indices. |

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
        .pkOnManualPageChange { previousIndex, currentIndex in
            print("Manual change from page \(previousIndex) to \(currentIndex)")
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
