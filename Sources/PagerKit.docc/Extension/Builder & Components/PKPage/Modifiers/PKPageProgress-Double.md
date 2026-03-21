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

Attach a custom progress closure to a `PKPage`, returning an optional `Double`. This sets the `progress` property, enabling dynamic tracking or page-specific progress. Use this for custom timing logic, indicators, or conditional navigation. Unlike `pkPageDuration(_:)` (fixed duration), this offers dynamic runtime flexibility.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `progress` | `() -> Double?` | Closure returning an optional `Double` for progress/duration. `nil` means no progress. |

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
