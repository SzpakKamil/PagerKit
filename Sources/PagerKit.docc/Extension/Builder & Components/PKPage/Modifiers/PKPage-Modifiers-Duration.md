# ``PagerKit/PKPage/pkPageDuration(_:)``

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

Sets the duration for automatic page transitions.

## Overview

The `pkPageDuration(_:)` modifier in the `PagerKit` framework configures the duration for automatic transitions of a ``PKPage`` instance within a tab-based navigation structure. This modifier allows developers to specify a time interval (in seconds) after which the page automatically transitions to the next one. The duration is stored in the `progress` closure of the ``PKPage``, which returns the specified duration as a `Double`. If a `nil` duration is provided, the `progress` closure remains unchanged, disabling automatic transitions for that page. This modifier is particularly useful for creating slideshow-like or timed navigation experiences in a ``PKPagesView``.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `duration` | `Double?` | An optional duration in seconds for automatic page transitions. If `nil`, no automatic transition is set. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage {
                Text("Page 1")
                    .font(.title)
            }
            .pkPageDuration(5.0) // Transitions after 5 seconds
            
            PKPage {
                Text("Page 2")
                    .font(.title)
            }
            .pkPageDuration(3.0) // Transitions after 3 seconds
        }
    }
}
```

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPage/init(content:)``
- ``PagerKit/PKPage/pkPageProgress(_:)-(()->Double?)``
- ``PagerKit/PKPage/pkPageProgress(_:)-(()->UIPageControlProgress)``
- ``PagerKit/PKPage/pkPageProgress(_:)-(UIPageControlProgress)``
- ``PagerKit/PKPagesView``
