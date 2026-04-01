# ``PagerKit/PKPage/pkPageProgress(_:)-(()->UIPageControlProgress)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "17.0")
    @Available(iPadOS, introduced: "17.0")
    @Available(tvOS, introduced: "17.0")
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

Sets a custom closure returning a `UIPageControlProgress` for a page.

## Overview

Attach a closure returning a `UIPageControlProgress` object to a `PKPage`. This enables dynamic progress management in UIKit environments. Use this for runtime-determined progress indicators or navigation behaviors. Not available on macOS and watchOS.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `progress` | `() -> UIPageControlProgress` | Closure returning a `UIPageControlProgress` object. |

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
                Text("Page 1")
                    .font(.title)
            }
            .pkPageProgress { UIPageControlProgress(currentProgress: progressValue) } // Dynamic progress
            
            PKPage {
                Text("Page 2")
                    .font(.title)
            }
            .pkPageProgress { UIPageControlProgress(currentProgress: 0.0) } // No progress
        }
    }
}
```

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPage/init(content:)``
- ``PagerKit/PKPage/pkPageDuration(_:)``
- ``PagerKit/PKPage/pkPageProgress(_:)-(()->Double?)``
- ``PagerKit/PKPage/pkPageProgress(_:)-(UIPageControlProgress)``
- ``PagerKit/PKPagesView``
