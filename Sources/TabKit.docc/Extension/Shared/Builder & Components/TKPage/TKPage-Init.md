# ``TabKit/TKPage/init(content:)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
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

The `init(content:)` initializer of the ``TKPage`` struct in the `TabKit` framework is used to create a page with a specified SwiftUI view as its content. This initializer leverages the `@ViewBuilder` attribute to allow flexible and declarative construction of the page's content. It automatically wraps the provided view in an `AnyView` for type erasure and, when UIKit is available (on iOS and iPadOS), initializes a `UIHostingController` to host the SwiftUI content. The initializer sets the `progress` property to `nil` by default, allowing for optional progress tracking to be configured separately. This initializer is ideal for creating individual pages within a tab-based navigation structure in a SwiftUI application.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `content` | `() -> some View` | A closure, marked with `@ViewBuilder`, that defines the SwiftUI view content for the page. |

### Example Usage
```swift
import SwiftUI
import TabKit

struct ContentView: View {
    var body: some View {
        TKPage {
            VStack {
                Text("Welcome to TabKit")
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
- ``TabKit/TKPage``
