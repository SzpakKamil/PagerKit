# ``PagerKit/PKPage/pkPageIndicatorImage(image:)``

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

Sets a custom image for the **inactive page indicator**.

## Overview

Define a **custom image for the page indicator when the page is not selected**.

- **iOS, iPadOS, tvOS, visionOS**: Use `UIImage?`.
- **macOS, watchOS**: Use `Image?`.
- **`nil`**: Restores the default system dot.

Use this for thematic or branded indicators (e.g., stars, circles). Use `.pkPageCurrentIndicatorImage(image:)` for the active state.

> Affects **only the inactive state**.

## Parameters

| Name   | Type                   | Description |
|--------|------------------------|-------------|
| `image`| `UIImage?` or `Image?` | Image to display when this page is **not** current. `nil` restores default. |

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
            .pkPageIndicatorImage(Image(systemName: "star"))
            #else
            .pkPageIndicatorImage(UIImage(systemName: "star"))
            #endif
            PKPage {
                Text("Page 2")
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
        Sets a custom image for an inactive page indicator on iOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Default-iOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Custom-iOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        Sets a custom image for an inactive page indicator on iPadOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Default-iPadOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Custom-iPadOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        Sets a custom image for an inactive page indicator on macOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Default-macOSTahoe", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Custom-macOSTahoe", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        Sets a custom image for an inactive page indicator on visionOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Default-visionOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Custom-visionOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("tvOS") {
        Sets a custom image for an inactive page indicator on tvOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2) {
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Default-tvOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Custom-tvOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        Sets a custom image for an inactive page indicator on watchOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Default-watchOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPage-PKPageIndicatorImage-Custom-watchOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
}

## Read Also

### Related Modifiers & Types
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPage``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
- ``PagerKit/PKPageControlIndicatorDirection``
