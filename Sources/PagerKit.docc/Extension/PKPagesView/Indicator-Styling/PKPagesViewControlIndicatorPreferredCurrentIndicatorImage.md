# ``PagerKit/PKPagesView/pkPageControlIndicatorPreferredCurrentPageIndicatorImage(image:)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
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

Sets a custom image for the page control's current page indicator.

## Overview

Sets the preferred custom image for the **current** page indicator. Use `UIImage` on iOS/iPadOS/visionOS, or `Image` on macOS/watchOS. `nil` uses the default system dot. Not supported on tvOS.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `image` | `UIImage?` or `Image?` | Custom image for the current page indicator. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1")}
            PKPage { Text("Page 2")}
        }
        #if os(macOS) || os(watchOS)
        .pkPageControlIndicatorPreferredCurrentPageIndicatorImage(Image(systemName: "car"))
        #else
        .pkPageControlIndicatorPreferredCurrentPageIndicatorImage(UIImage(systemName: "car"))
        #endif
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        Sets custom current page indicator image on iOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredCurrentIndicatorImage-Default-iOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredCurrentIndicatorImage-Custom-iOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        Sets custom current page indicator image on iPadOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredCurrentIndicatorImage-Default-iPadOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredCurrentIndicatorImage-Custom-iPadOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        Sets custom current page indicator image on macOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredCurrentIndicatorImage-Default-macOSTahoe", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredCurrentIndicatorImage-Custom-macOSTahoe", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        Sets custom current page indicator image on visionOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredCurrentIndicatorImage-Default-visionOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredCurrentIndicatorImage-Custom-visionOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        Sets custom current page indicator image on watchOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredCurrentIndicatorImage-Default-watchOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredCurrentIndicatorImage-Custom-watchOS", alt: "Custom") {
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
