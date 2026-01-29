# ``PagerKit/PKPage/pkPageCurrentIndicatorImage(_:)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(watchOS, introduced: "10.0")
    @Available(tvOS, introduced: "14.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

Sets a custom image for the **current page indicator** of a specific page in the page control.

## Overview

The `pkPageCurrentIndicatorImage(_:)` modifier, applied to a ``PKPage`` within a ``PKPagesView``, allows you to customize the **active (current) page indicator** for a specific page. This is distinct from the regular (inactive) indicator and only affects the appearance **when the associated page is currently selected**.

- On **iOS, iPadOS, tvOS, and visionOS**, use `UIImage?`.
- On **macOS and watchOS**, use `Image?`.
- Passing `nil` restores the default system indicator for that page.

This enables rich visual storytelling—such as highlighting the current page with a unique icon (e.g., a filled star, a car, or a checkmark)—while keeping inactive indicators consistent.

## Parameters

| Name   | Type                   | Description |
|--------|------------------------|-------------|
| `image`| `UIImage?` or `Image?` | The image to display when this page is the **current** page. Use `UIImage` on iOS/iPadOS/tvOS/visionOS; use `Image` on macOS/watchOS. `nil` = default system dot. |


## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage {
                Text("Page 1")
                    .font(.title)
            }
            #if os(macOS) || os(watchOS)
            .pkPageCurrentIndicatorImage(Image(systemName: "star"))
            #else
            .pkPageCurrentIndicatorImage(UIImage(systemName: "star"))
            #endif

            PKPage {
                Text("Page 2")
                    .font(.title)
            }
            #if os(macOS) || os(watchOS)
            .pkPageCurrentIndicatorImage(Image(systemName: "car"))
            #else
            .pkPageCurrentIndicatorImage(UIImage(systemName: "car"))
            #endif
        }
    }
}
```

## Preview

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for the page 2 indicator dot, changing it from a car to a star.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-iOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-iOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for the page 2 indicator dot, changing it from a car to a star, optimized for larger screens.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-iPadOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-iPadOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for the page 2 indicator dot, changing it from a car to a star for mouse-based navigation.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-macOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-macOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for the page 2 indicator dot, changing it from a car to a star, optimized for larger screens.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-tvOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-tvOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for the page 2 indicator dot, changing it from a car to a star for focus-based interaction.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-visionOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-visionOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `pkPageControlIndicator(_:forPage:)` modifier sets a custom image for the page 2 indicator dot, changing it from a car to a star for touch-based interaction on small screens.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-watchOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-watchOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
}

## Read Also

### Related Modifiers & Types
- ``PagerKit/PKPage/pkPageIndicatorImage(_:)``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPage``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
- ``PagerKit/PKPageControlIndicatorDirection``
