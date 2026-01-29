# ``PagerKit/PKPagesView/pkPageControlPreferredCurrentPageIndicatorImage(image:)``

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

The `pkPageControlPreferredCurrentPageIndicatorImage(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures a custom image for the `PageControl`’s current page indicator within the `PKPagesView`. It sets the `preferredCurrentPageIndicatorImage` to the specified `UIImage` on iOS, iPadOS, and visionOS, or `Image` on macOS and watchOS, allowing customization of the dot representing the active page. This modifier is not supported on tvOS. If `nil`, the default system dot is used.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `image` | `UIImage?` or `Image?` | The custom image for the current page indicator. Use `UIImage` on iOS, iPadOS, and visionOS; use `Image` on macOS and watchOS. If `nil`, the default system dot is used. |

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
        .pkPageControlPreferredCurrentPageIndicatorImage(Image(systemName: "car"))
        #else
        .pkPageControlPreferredCurrentPageIndicatorImage(Image(systemName: "car"))
        #endif
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `pkPageControlPreferredCurrentPageIndicatorImage(_:)` modifier sets a custom image for the current page indicator dot.
        @Row(numberOfColumns: 2) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlPreferredCurrentPageIndicatorImage-iOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlPreferredCurrentPageIndicatorImage-iOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `pkPageControlPreferredCurrentPageIndicatorImage(_:)` modifier sets a custom image for the current page indicator dot, optimized for larger screens.
        @Row(numberOfColumns: 2) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlPreferredCurrentPageIndicatorImage-iPadOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlPreferredCurrentPageIndicatorImage-iPadOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `pkPageControlPreferredCurrentPageIndicatorImage(_:)` modifier sets a custom image for the current page indicator dot for mouse-based navigation.
        @Row(numberOfColumns: 2) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlPreferredCurrentPageIndicatorImage-macOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlPreferredCurrentPageIndicatorImage-macOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `pkPageControlPreferredCurrentPageIndicatorImage(_:)` modifier sets a custom image for the current page indicator dot for focus-based interaction.
        @Row(numberOfColumns: 2) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlPreferredCurrentPageIndicatorImage-visionOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlPreferredCurrentPageIndicatorImage-visionOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `pkPageControlPreferredCurrentPageIndicatorImage(_:)` modifier sets a custom image for the current page indicator dot for touch-based interaction on small screens.
        @Row(numberOfColumns: 2) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlPreferredCurrentPageIndicatorImage-watchOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlPreferredCurrentPageIndicatorImage-watchOS-Custom", alt: "Custom") {
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
- ``PagerKit/PKPageControlBackgroundStyle``
- ``PagerKit/PKPageControlDirection``
