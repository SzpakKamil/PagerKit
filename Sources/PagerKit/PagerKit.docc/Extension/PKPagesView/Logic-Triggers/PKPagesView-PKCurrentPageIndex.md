# ``PagerKit/PKPagesView/pkCurrentPageIndex(index:)``

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

Binds the current page index to a state variable.

## Overview

Binds the active page index to a SwiftUI `Binding<Int>`. Enables programmatic navigation and state observation.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `index` | `Binding<Int>` | Binding to the current page index. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    @State private var currentPage = 0
    
    var body: some View {
        VStack {
            PKPagesView {
                PKPage { Text("Page 0") }
                PKPage { Text("Page 1") }
            }
            .pkCurrentPageIndex(index: $currentPage)
            
            Button("Go to Page 1") {
                currentPage = 1
            }
        }
    }
}
```

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
