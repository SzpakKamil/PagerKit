# ``PagerKit/PKPagesView/pkPageControlCurrentIndicatorTintColor(_:)``

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

Sets the tint color of the page control's current page indicator.

## Overview

The `pkPageControlCurrentIndicatorTintColor(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures the tint color of the `PageControl`’s current page indicator within the `PKPagesView`. It sets the `currentPageIndicatorTintColor` property of `PKPageControlStyle` to the specified `UIColor` (or `NSColor` on macOS), allowing customization of the dot representing the active page. 

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `color` | `UIColor?` or `NSColor?` | The tint color for the current page indicator dot. If `nil`, the default system color is used. |

## Example Usage

```swift
import SwiftUI
import PagerKit
import UIKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1") }
            PKPage { Text("Page 2") }
        }
        .pkPageControlCurrentIndicatorTintColor(.red)
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `pkPageControlCurrentIndicatorTintColor(_:)` modifier sets the tint color of the current page indicator dot.
        @Row(numberOfColumns: 2) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlCurrentIndicatorTintColor-iOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlCurrentIndicatorTintColor-iOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `pkPageControlCurrentIndicatorTintColor(_:)` modifier sets the tint color of the current page indicator dot, optimized for larger screens.
        @Row(numberOfColumns: 2) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlCurrentIndicatorTintColor-iPadOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlCurrentIndicatorTintColor-iPadOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `pkPageControlCurrentIndicatorTintColor(_:)` modifier sets the tint color of the current page indicator dot for mouse-based navigation.
        @Row(numberOfColumns: 2) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlCurrentIndicatorTintColor-macOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlCurrentIndicatorTintColor-macOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `pkPageControlCurrentIndicatorTintColor(_:)` modifier sets the tint color of the current page indicator dot for focus-based interaction.
        @Row(numberOfColumns: 2) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlCurrentIndicatorTintColor-visionOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlCurrentIndicatorTintColor-visionOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `pkPageControlCurrentIndicatorTintColor(_:)` modifier sets the tint color of the current page indicator dot for touch-based interaction on small screens.
        @Row(numberOfColumns: 2) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlCurrentIndicatorTintColor-watchOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlCurrentIndicatorTintColor-watchOS-Custom", alt: "Custom") {
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
