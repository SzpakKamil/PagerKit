# ``PagerKit/PKPage/pkPageCurrentIndicatorImage(image:)``

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

Sets a custom image for the **current page indicator**.

## Overview

Customize the **active page indicator** for a specific `PKPage`. This modifier affects appearance only **when the associated page is selected**.

- **iOS, iPadOS, tvOS, visionOS**: Use `UIImage?`.
- **macOS, watchOS**: Use `Image?`.
- **`nil`**: Restores the default system indicator.

Use this to highlight the current page with a unique icon (e.g., filled star, checkmark) while keeping inactive indicators consistent.

## Parameters

| Name   | Type                   | Description |
|--------|------------------------|-------------|
| `image`| `UIImage?` or `Image?` | Image to display when this page is **current**. `nil` = default system dot. |

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
        Sets a custom image (star) for the active page indicator on iOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Default-iOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Custom-iOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        Sets a custom image (star) for the active page indicator on iPadOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Default-iPadOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Custom-iPadOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        Sets a custom image (star) for the active page indicator on macOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Default-macOSTahoe", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Custom-macOSTahoe", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("tvOS") {
        Sets a custom image (star) for the active page indicator on tvOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Default-tvOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Custom-tvOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        Sets a custom image (star) for the active page indicator on visionOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Default-visionOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Custom-visionOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        Sets a custom image (star) for the active page indicator on watchOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Default-watchOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPage-PKPageCurrentIndicatorImage-Custom-watchOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
}

## Read Also

### Related Modifiers & Types
- ``PagerKit/PKPage/pkPageIndicatorImage(image:)``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPage``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
- ``PagerKit/PKPageControlIndicatorDirection``
