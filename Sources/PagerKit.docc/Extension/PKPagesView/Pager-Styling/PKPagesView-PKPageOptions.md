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

The `pkPageOptions(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework sets custom options for the underlying `UIPageViewController` via the `PKPageOptions` struct. It allows customization of page navigation behavior, such as the spacing between pages, by setting the `options` property with a dictionary of `UIPageViewController.OptionsKey` keys and corresponding values. For example, setting the `interPageSpacing` option adjusts the gap between pages during transitions.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `options` | `[UIPageViewController.OptionsKey : Any]?` | A dictionary of `UIPageViewController` options, such as `.interPageSpacing` to control spacing between pages, or `nil` to use default settings. |

## Example Usage

```swift
import SwiftUI
import PagerKit
import UIKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage {
                ZStack{
                    Color.red
                    Text("Page 1").font(.title) 
                }
            }
            PKPage {
                ZStack{
                    Color.green
                    Text("Page 2").font(.title) 
                }
            }
        }
        .pkPageOptions([.interPageSpacing: 20])
    }
}
```
## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlDirection``
- ``PagerKit/PKPageControlBackgroundStyle``
