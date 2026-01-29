# ``PagerKit/PKPage/pkPageIndicatorImage(_:)``

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

Sets a custom image for the **inactive (non-current) page indicator** of a specific page in the page control.

## Overview

The `pkPageIndicatorImage(_:)` modifier, applied to a ``PKPage`` inside a ``PKPagesView``, lets you define a **custom image for the page indicator when the page is not currently selected**.

- Use `UIImage?` on **iOS, iPadOS, tvOS, and visionOS**
- Use `Image?` on **macOS and watchOS**
- Pass `nil` to fall back to the default system dot

This modifier is ideal for creating thematic or branded page indicators—such as using icons like stars, circles, or custom assets—while keeping the **current page indicator** distinct via `.pkPageCurrentIndicatorImage(_:)`.

> This affects **only the inactive state**. Use ``pkPageCurrentIndicatorImage(_:)`` for the active/selected appearance.

## Parameters

| Name   | Type                   | Description |
|--------|------------------------|-------------|
| `image`| `UIImage?` or `Image?` | The image to display when this page is **not** the current page. `nil` restores the default system indicator. |

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

            PKPage {
                Text("Page 2")
                    .font(.title)
            }

            PKPage {
                Text("Page 3")
                    .font(.title)
            }
            #if os(macOS) || os(watchOS)
            .pkPageIndicatorImage(Image(systemName: "car"))
            #else
            .pkPageIndicatorImage(UIImage(systemName: "car"))
            #endif
        }
    }
}
```


## Preview

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

### Related Modifiers & Types
- ``PagerKit/PKPage/pkPageCurrentIndicatorImage(_:)`` – Customizes the **current** page indicator
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPage``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
- ``PagerKit/PKPageControlIndicatorDirection``
