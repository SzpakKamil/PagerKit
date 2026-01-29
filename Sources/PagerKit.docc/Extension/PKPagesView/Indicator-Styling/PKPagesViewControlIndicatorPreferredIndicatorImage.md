# ``PagerKit/PKPagesView/pkPageControlIndicatorPreferredIndicatorImage(image:)``

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

The `pkPageControlIndicatorPreferredIndicatorImage(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures a custom image for the `PageControl`’s current page indicator within the `PKPagesView`. It sets the `preferredIndicatorImage` propert to the specified `UIImage` on iOS, iPadOS, and visionOS, or `Image` on macOS and watchOS, allowing customization of the dot representing the active page. This modifier is not supported on tvOS. If `nil`, the default system dot is used.

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
        .pkPageControlIndicatorPreferredCurrentPageIndicatorImage(Image(systemName: "car"))
        #else
        .pkPageControlIndicatorPreferredCurrentPageIndicatorImage(Image(systemName: "car"))
        #endif
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `pkPageControlIndicatorPreferredIndicatorImage(_:)` modifier sets a custom image for the current page indicator dot.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredIndicatorImage-iOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredIndicatorImage-iOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `pkPageControlIndicatorPreferredIndicatorImage(_:)` modifier sets a custom image for the current page indicator dot, optimized for larger screens.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredIndicatorImage-iPadOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredIndicatorImage-iPadOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `pkPageControlIndicatorPreferredIndicatorImage(_:)` modifier sets a custom image for the current page indicator dot for mouse-based navigation.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredIndicatorImage-macOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredIndicatorImage-macOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `pkPageControlIndicatorPreferredIndicatorImage(_:)` modifier sets a custom image for the current page indicator dot for focus-based interaction.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredIndicatorImage-visionOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredIndicatorImage-visionOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `pkPageControlIndicatorPreferredIndicatorImage(_:)` modifier sets a custom image for the current page indicator dot for touch-based interaction on small screens.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredIndicatorImage-watchOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorPreferredIndicatorImage-watchOS-Custom", alt: "Custom") {
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
