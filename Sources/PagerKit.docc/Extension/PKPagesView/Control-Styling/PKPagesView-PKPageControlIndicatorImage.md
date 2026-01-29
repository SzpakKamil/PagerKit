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

The `pkPageControlIndicator(_:forPage:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures a custom image for a specific page indicator within the `PageControl` of the `PKPagesView`. It sets the `pageIndicatorImage` for a specified page index to the provided `UIImage` on iOS, iPadOS, and visionOS, or `Image` on macOS and watchOS, allowing customization of the indicator dot for a specific page. If `nil`, the default system dot is used for that page.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `image` | `UIImage?` or `Image?` | The custom image for the page indicator at the specified page index. Use `UIImage` on iOS, iPadOS, and visionOS; use `Image` on macOS and watchOS. If `nil`, the default system dot is used for the page. |
| `page` | `Int` | The index of the page for which to set the custom indicator image. |

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
        On iOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for a specific page indicator dot.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-iOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-iOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for a specific page indicator dot, optimized for larger screens.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-iPadOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-iPadOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for a specific page indicator dot for mouse-based navigation.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-macOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-macOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for a specific page indicator dot for focus-based interaction.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-visionOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-visionOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for a specific page indicator dot for focus-based interaction.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-tvOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-tvOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for a specific page indicator dot for touch-based interaction on small screens.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-watchOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PKPageControlIndicatorImage-watchOS-Custom", alt: "Custom") {
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
