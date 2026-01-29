# ``TabKit/TKPage/tkPageProgress(_:)-(()->Double?)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "17.0")
    @Available(iPadOS, introduced: "17.0")
    @Available(macOS, introduced: "14.0")
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

Sets a custom progress closure for a page.

## Overview

The `tkPageProgress(_:)` modifier in the `TabKit` framework allows developers to attach a custom progress closure to a ``TKPage`` instance, which returns an optional `Double` value. This modifier sets the `progress` property of the ``TKPage`` to the provided closure, enabling dynamic tracking or reporting of page-specific progress. This is particularly useful for scenarios requiring custom timing logic, progress indicators, or conditional navigation behaviors within a `TKPagesView`. Unlike the ``tkPageDuration(_:)`` modifier, which sets a fixed duration for automatic transitions, `tkPageProgress(_:)` offers greater flexibility by allowing the progress value to be determined dynamically at runtime.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `progress` | `() -> Double?` | A closure that returns an optional `Double` representing the progress or duration for the page. If `nil`, no progress is reported. |

### Example Usage
```swift
import SwiftUI
import TabKit

struct ContentView: View {
    @State private var progressValue: Double? = 5.0
    
    var body: some View {
        TKPagesView {
            TKPage {
                Text("Page 1")
                    .font(.title)
            }
            .tkPageProgress { progressValue } // Uses dynamic progress value
            
            TKPage {
                Text("Page 2")
                    .font(.title)
            }
            .tkPageProgress { nil } // No progress reported
        }
    }
}
```

## Read Also
- ``TabKit/TKPage``
- ``TabKit/TKPage/init(content:)``
- ``TabKit/TKPage/tkPageDuration(_:)``
- ``TabKit/TKPage/tkPageProgress(_:)-(()->UIPageControlProgress)``
- ``TabKit/TKPage/tkPageProgress(_:)-(UIPageControlProgress)``
- ``TabKit/TKPagesView``

