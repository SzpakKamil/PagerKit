# ``PagerKit/PKPagesView/pkPageOptions(_:)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(tvOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

Configures options for the underlying `UIPageViewController`.

## Overview

Sets custom options for the `UIPageViewController` on supported platforms (iOS, iPadOS, tvOS, visionOS). Adjusts navigation behavior, such as transition style or inter-page spacing.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `options` | `[UIPageViewController.OptionsKey : Any]?` | Dictionary of `UIPageViewController` options (e.g., `.interPageSpacing`). `nil` for defaults. |

## Example Usage

```swift
import SwiftUI
import PagerKit
import UIKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Color.red }
            PKPage { Color.green }
        }
        .pkPageOptions([.interPageSpacing: 20])
    }
}
```
## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorDirection``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
