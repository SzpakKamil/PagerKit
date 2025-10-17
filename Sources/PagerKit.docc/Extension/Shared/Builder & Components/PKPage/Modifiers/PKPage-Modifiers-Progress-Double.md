# ``PagerKit/PKPage/pkPageProgress(_:)-(()->Double?)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "17.0")
    @Available(iPadOS, introduced: "17.0")
    @Available(macOS, introduced: "14.0")
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

Sets a custom progress closure for a page.

## Overview

The `pkPageProgress(_:)` modifier in the `PagerKit` framework allows developers to attach a custom progress closure to a ``PKPage`` instance, which returns an optional `Double` value. This modifier sets the `progress` property of the ``PKPage`` to the provided closure, enabling dynamic tracking or reporting of page-specific progress. This is particularly useful for scenarios requiring custom timing logic, progress indicators, or conditional navigation behaviors within a `PKPagesView`. Unlike the ``pkPageDuration(_:)`` modifier, which sets a fixed duration for automatic transitions, `pkPageProgress(_:)` offers greater flexibility by allowing the progress value to be determined dynamically at runtime.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `progress` | `() -> Double?` | A closure that returns an optional `Double` representing the progress or duration for the page. If `nil`, no progress is reported. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    @State private var progressValue: Double? = 5.0
    
    var body: some View {
        PKPagesView {
            PKPage {
                Text("Page 1")
                    .font(.title)
            }
            .pkPageProgress { progressValue } // Uses dynamic progress value
            
            PKPage {
                Text("Page 2")
                    .font(.title)
            }
            .pkPageProgress { nil } // No progress reported
        }
    }
}
```

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPage/init(content:)``
- ``PagerKit/PKPage/pkPageDuration(_:)``
- ``PagerKit/PKPage/pkPageProgress(_:)-(()->UIPageControlProgress)``
- ``PagerKit/PKPage/pkPageProgress(_:)-(UIPageControlProgress)``
- ``PagerKit/PKPagesView``

