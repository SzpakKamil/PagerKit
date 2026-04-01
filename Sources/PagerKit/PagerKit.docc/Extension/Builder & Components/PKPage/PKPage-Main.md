# ``PagerKit/PKPage``

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

Component for creating pages

## Overview

Core component for creating pages in PagerKit. `PKPage` encapsulates a SwiftUI view, supporting platform-specific hosting (via `UIHostingController` on iOS/iPadOS/tvOS/visionOS). The `progress` closure enables tracking or reporting page-specific progress (e.g., transition durations, UIKit progress).

### Properties Grid
| Property Name | Type | Description |
|---------------|------|-------------|
| `content` | `AnyView` | The SwiftUI view content. |
| `hostingViewController` | `UIHostingController<AnyView>` | UIKit hosting controller (iOS/iPadOS/tvOS/visionOS). |
| `progress` | `(() -> Any)?` | Optional progress closure. |

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
            .pkPageDuration(5.0) // Transitions after 5 seconds
            
            PKPage {
                Text("Page 2")
                    .font(.title)
            }
            .pkPageProgress { UIPageControlProgress(currentProgress: progressValue) } // UIKit progress
        }
    }
}
```

## Read Also
- ``PagerKit/PKPage/init(content:)``
- ``PagerKit/PKPage/pkPageDuration(_:)``
- ``PagerKit/PKPage/pkPageProgress(_:)-(()->Double?)``
- ``PagerKit/PKPage/pkPageProgress(_:)-(UIPageControlProgress)``
- ``PagerKit/PKPage/pkPageProgress(_:)-(()->UIPageControlProgress)``
- ``PagerKit/PKPagesView``
