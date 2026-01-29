# ``TabKit/TKPage/tkPageProgress(_:)-(UIPageControlProgress)``

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

Sets a `UIPageControlProgress` for a page.

## Overview

The `tkPageProgress(_:)` modifier in the `TabKit` framework allows developers to attach a `UIPageControlProgress` object to a ``TKPage`` instance for managing page-specific progress in a tab-based navigation structure.This modifier sets the `progress` property of the ``TKPage`` to a closure that returns the provided `UIPageControlProgress` object. This is particularly useful for integrating with UIKit-based page control mechanisms, enabling precise control over progress indicators or navigation behaviors within a ``TKPagesView``. Unlike the ``tkPageDuration(_:)`` modifier, which sets a fixed duration, or the `tkPageProgress(_:)` modifier with a `Double?` closure, this variant is tailored for UIKit environments and is not available on macOS.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `progress` | `UIPageControlProgress` | A `UIPageControlProgress` object that defines the progress behavior for the page. |

### Example Usage
```swift
import SwiftUI
import TabKit
import UIKit

struct ContentView: View {
    var body: some View {
        TKPagesView {
            TKPage {
                Text("Page 1")
                    .font(.title)
            }
            .tkPageProgress(UIPageControlProgress(currentProgress: 0.5)) // Sets progress to 50%
            
            TKPage {
                Text("Page 2")
                    .font(.title)
            }
            .tkPageProgress(UIPageControlProgress(currentProgress: 0.0)) // No progress
        }
    }
}
```

## Read Also
- ``TabKit/TKPage``
- ``TabKit/TKPage/init(content:)``
- ``TabKit/TKPage/tkPageDuration(_:)``
- ``TabKit/TKPage/tkPageProgress(_:)-(()->Double?)``
- ``TabKit/TKPagesView``
