# ``PagerKit/PKPage/tkPageProgress(_:)-(()->UIPageControlProgress)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "17.0")
    @Available(iPadOS, introduced: "17.0")
    @Available(tvOS, introduced: "17.0")
    @Available(visionOS, introduced: "1.0")
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

The `tkPageProgress(_:)` modifier in the `PagerKit` framework allows developers to attach a closure that returns a `UIPageControlProgress` object to a ``PKPage`` instance, enabling dynamic management of page-specific progress in a tab-based navigation structure. This modifier sets the `progress` property of the ``PKPage`` to the provided closure, which dynamically returns a `UIPageControlProgress` object. This is particularly useful for integrating with UIKit-based page control mechanisms, allowing runtime-determined progress indicators or navigation behaviors within a ``PKPagesView``. Unlike the `tkPageDuration(_:)` modifier, which sets a fixed duration, or the `tkPageProgress(_:)` modifier with a `Double?` closure, this variant is tailored for UIKit environments, offering flexibility for dynamic progress updates, and is not available on macOS.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `progress` | `() -> UIPageControlProgress` | A closure that returns a `UIPageControlProgress` object defining the progress behavior for the page. |

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
            .tkPageProgress { UIPageControlProgress(currentProgress: progressValue) } // Dynamic progress
            
            PKPage {
                Text("Page 2")
                    .font(.title)
            }
            .tkPageProgress { UIPageControlProgress(currentProgress: 0.0) } // No progress
        }
    }
}
```

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPage/init(content:)``
- ``PagerKit/PKPage/tkPageDuration(_:)``
- ``PagerKit/PKPage/tkPageProgress(_:)-(()->Double?)``
- ``PagerKit/PKPage/tkPageProgress(_:)-(UIPageControlProgress)``
- ``PagerKit/PKPagesView``
