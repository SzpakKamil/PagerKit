# ``PagerKit/PKPage``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(tvOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

Component for creating pages

## Overview

The `PKPage` struct in the `PagerKit` framework is a core component for creating individual pages within a tab-based navigation structure in SwiftUI applications. It encapsulates a SwiftUI view as its content, providing a flexible way to define and display pages. The `PKPage` struct is designed to work seamlessly with SwiftUI's view hierarchy and supports platform-specific hosting on iOS, iPadOS, tvOS, and visionOS through a `UIHostingController` when UIKit is available (not supported on macOS). The `progress` property, an optional closure, enables tracking or reporting page-specific progress, such as automatic transition durations or UIKit-based progress indicators. This makes `PKPage` versatile for dynamic tab interfaces, including slideshow-like experiences or custom navigation behaviors within a ``PKPagesView``. The struct supports modifiers like ``tkPageDuration(_:)`` for setting fixed transition times and ``tkPageProgress(_:)-(()->Double?)`` for dynamic progress management, with UIKit-specific variants for `UIPageControlProgress` on non-macOS platforms.

### Properties Grid
| Property Name | Type | Description |
|---------------|------|-------------|
| `content` | `AnyView` | The SwiftUI view that defines the content of the page. |
| `hostingViewController` | `UIHostingController<AnyView>` | A UIKit hosting controller for the page content, available when UIKit is imported (iOS, iPadOS, tvOS, visionOS). |
| `progress` | `(() -> Any)?` | An optional closure for tracking or reporting progress, returning a `Double?`, `UIPageControlProgress`, or other types based on applied modifiers. |

### Example Usage
```swift
import SwiftUI
import PagerKit
import UIKit

struct ContentView: View {
    @State private var progressValue: Float = 0.5
    
    var body: some View {
        PKPagesView {
            PKPage {
                VStack {
                    Text("Welcome")
                        .font(.title)
                    Text("This is a sample page")
                        .foregroundColor(.gray)
                }
            }
            .tkPageDuration(5.0) // Transitions after 5 seconds
            
            PKPage {
                Text("Page 2")
                    .font(.title)
            }
            .tkPageProgress { UIPageControlProgress(currentProgress: progressValue) } // UIKit progress
        }
    }
}
```

## Read Also
- ``PagerKit/PKPage/init(content:)``
- ``PagerKit/PKPage/tkPageDuration(_:)``
- ``PagerKit/PKPage/tkPageProgress(_:)-(()->Double?)``
- ``PagerKit/PKPage/tkPageProgress(_:)-(UIPageControlProgress)``
- ``PagerKit/PKPage/tkPageProgress(_:)-(()->UIPageControlProgress)``
- ``PagerKit/PKPagesView``
