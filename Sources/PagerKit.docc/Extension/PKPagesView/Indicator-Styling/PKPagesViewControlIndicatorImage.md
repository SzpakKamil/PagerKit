# ``PagerKit/PKPagesView/pkPageControlIndicator(_:forPage:)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(tvOS, introduced: "14.0")
    @Available(watchOS, introduced: "10.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

Sets a custom image for a specific page indicator in the page control.

## Overview

Sets a custom image for a specific **inactive** page indicator within the `PageControl`. Customizes the dot for a specific page index when it is **not selected**. Use `UIImage` on iOS/iPadOS/tvOS/visionOS, or `Image` on macOS/watchOS. `nil` uses the default system dot.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `image` | `UIImage?` or `Image?` | Custom indicator image. `nil` for default. |
| `page` | `Int` | Index of the page to customize. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page1").font(.title) }
            PKPage { Text("Page2").font(.title) }
            PKPage { Text("Page3").font(.title) }
        }
        #if os(macOS) || os(watchOS)
        .pkPageControlIndicator(Image(systemName: "car"), forPage: 2)
        #else
        .pkPageControlIndicator(UIImage(systemName: "car"), forPage: 2)
        #endif
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        Sets custom inactive image for page indicator on iOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Default-iOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Custom-iOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        Sets custom inactive image for page indicator on iPadOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Default-iPadOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Custom-iPadOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        Sets custom inactive image for page indicator on macOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Default-macOSTahoe", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Custom-macOSTahoe", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        Sets custom inactive image for page indicator on visionOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Default-visionOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Custom-visionOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("tvOS") {
        Sets custom inactive image for page indicator on tvOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Default-tvOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Custom-tvOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        Sets custom inactive image for page indicator on watchOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Default-watchOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorImage-Custom-watchOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
}

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
- ``PagerKit/PKPageControlIndicatorDirection``
