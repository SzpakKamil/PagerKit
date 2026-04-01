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

Configures the duration for automatic transitions of a `PKPage`. Specify a time interval (in seconds) for the page to transition to the next one automatically. This updates the `progress` closure of the `PKPage`. Passing `nil` disables automatic transitions for that page. Use this for slideshows or timed navigation.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `duration` | `Double?` | Duration in seconds for automatic transition. `nil` disables it. |

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
