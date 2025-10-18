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

The `pkPageProgress(_:)` modifier in the `PagerKit` framework allows developers to attach a `UIPageControlProgress` object to a ``PKPage`` instance for managing page-specific progress in a tab-based navigation structure.This modifier sets the `progress` property of the ``PKPage`` to a closure that returns the provided `UIPageControlProgress` object. This is particularly useful for integrating with UIKit-based page control mechanisms, enabling precise control over progress indicators or navigation behaviors within a ``PKPagesView``. Unlike the ``pkPageDuration(_:)`` modifier, which sets a fixed duration, or the `pkPageProgress(_:)` modifier with a `Double?` closure, this variant is tailored for UIKit environments and is not available on macOS and watchOS.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `progress` | `UIPageControlProgress` | A `UIPageControlProgress` object that defines the progress behavior for the page. |

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
