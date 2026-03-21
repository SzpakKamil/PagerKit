# ``PagerKit/PKPage/init(content:)``

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


Initializer for Page

## Overview

Create a `PKPage` with a SwiftUI view. This initializer uses `@ViewBuilder` for flexible content definition, wrapping the view in `AnyView`. On iOS/iPadOS/tvOS/visionOS, it initializes a `UIHostingController`.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `content` | `() -> some View` | Closure defining the page content. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPage {
            VStack {
                Text("Welcome to PagerKit")
                    .font(.title)
                Button("Tap Me") {
                    print("Button tapped")
                }
            }
        }
    }
}
```

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageBuilder``
