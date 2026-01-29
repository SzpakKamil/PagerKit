# ``PagerKit/PKPagesView/pkPageControlIndicatorCurrentIndicatorTintColor(_:)``

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

Sets the tint color of the page control's current page indicator.

## Overview

The `pkPageControlIndicatorCurrentIndicatorTintColor(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures the tint color of the `PageControl`’s current page indicator within the `PKPagesView`. It sets the `currentPageIndicatorTintColor` property of `PKPageControlStyle` to the specified `UIColor` (or `NSColor` on macOS), allowing customization of the dot representing the active page. 

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `color` | `UIColor?` or `NSColor?` | The tint color for the current page indicator dot. If `nil`, the default system color is used. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1") }
            PKPage { Text("Page 2") }
        }
        .pkPageControlIndicatorCurrentIndicatorTintColor(.red)
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `pkPageControlIndicatorCurrentIndicatorTintColor(_:)` modifier sets the tint color of the current page indicator dot.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Default-iOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Custom-iOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `pkPageControlIndicatorCurrentIndicatorTintColor(_:)` modifier sets the tint color of the current page indicator dot, optimized for larger screens.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Default-iPadOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Custom-iPadOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `pkPageControlIndicatorCurrentIndicatorTintColor(_:)` modifier sets the tint color of the current page indicator dot for mouse-based navigation.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Default-macOSTahoe", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Custom-macOSTahoe", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `pkPageControlIndicatorCurrentIndicatorTintColor(_:)` modifier sets the tint color of the current page indicator dot for focus-based interaction.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Default-visionOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Custom-visionOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `pkPageControlIndicatorCurrentIndicatorTintColor(_:)` modifier sets the tint color of the current page indicator dot for focus-based interaction.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Default-tvOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Custom-tvOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `pkPageControlIndicatorCurrentIndicatorTintColor(_:)` modifier sets the tint color of the current page indicator dot for touch-based interaction on small screens.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Default-watchOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorCurrentIndicatorTintColor-Custom-watchOS", alt: "Custom") {
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
