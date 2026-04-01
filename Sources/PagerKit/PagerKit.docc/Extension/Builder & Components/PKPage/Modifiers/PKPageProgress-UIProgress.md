# ``PagerKit/PKPage/pkPageProgress(_:)-(UIPageControlProgress)``

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

Sets a `UIPageControlProgress` for a page.

## Overview

Attach a `UIPageControlProgress` object to a `PKPage` for managing page-specific progress. This sets the `progress` property to a closure returning the object. Use this for integrating with UIKit-based page control mechanisms, enabling precise control over indicators or navigation. Tailored for UIKit environments (not available on macOS/watchOS).

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `progress` | `UIPageControlProgress` | `UIPageControlProgress` object defining behavior. |

### Example Usage
```swift
import SwiftUI
import PagerKit
import UIKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage {
                Text("Page 1")
                    .font(.title)
            }
            .pkPageProgress(UIPageControlProgress(currentProgress: 0.5)) // Sets progress to 50%
            
            PKPage {
                Text("Page 2")
                    .font(.title)
            }
            .pkPageProgress(UIPageControlProgress(currentProgress: 0.0)) // No progress
        }
    }
}
```

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPage/init(content:)``
- ``PagerKit/PKPage/pkPageDuration(_:)``
- ``PagerKit/PKPage/pkPageProgress(_:)-(()->Double?)``
- ``PagerKit/PKPagesView``
