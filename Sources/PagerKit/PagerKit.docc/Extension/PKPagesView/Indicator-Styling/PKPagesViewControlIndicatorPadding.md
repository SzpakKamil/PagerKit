# ``PagerKit/PKPagesView/pkPageControlPadding(_:_:)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(tvOS, introduced: "14.0")
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

Applies **directional padding** to the **page control container**.

## Overview

Adds **custom spacing** to specific edges of the page control area (dots + footer). Controls the distance from screen edges or content.

- `edges`: `Edge.Set` (e.g., `.horizontal`).
- `length`: Padding amount in points.

## Parameters

| Name     | Type       | Description |
|----------|------------|-------------|
| `edges`  | `Edge.Set` | Edges to pad. |
| `length` | `CGFloat`  | Padding size. |

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
        .pkPageControlPadding(.horizontal, 20)
    }
}
```

## Preview

@TabNavigator {
    @Tab("iOS") {
        Applies padding on iOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Custom-iOS", alt: "With Padding") {
                    With Padding
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Default-iOS", alt: "No Padding") {
                    No Padding
                }
            }
        }
    }
    @Tab("iPadOS") {
        Applies padding on iPadOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Custom-iPadOS", alt: "With Padding") {
                    With Padding
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Default-iPadOS", alt: "No Padding") {
                    No Padding
                }
            }
        }
    }
    @Tab("macOS") {
        Applies padding on macOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Custom-macOSTahoe", alt: "With Padding") {
                    With Padding
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Default-macOSTahoe", alt: "No Padding") {
                    No Padding
                }
            }
        }
    }
    @Tab("tvOS") {
        Applies padding on tvOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Custom-tvOS", alt: "With Padding") {
                    With Padding
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Default-tvOS", alt: "No Padding") {
                    No Padding
                }
            }
        }
    }
    @Tab("visionOS") {
        Applies padding on visionOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Custom-visionOS", alt: "With Padding") {
                    With Padding
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Default-visionOS", alt: "No Padding") {
                    No Padding
                }
            }
        }
    }
    @Tab("watchOS") {
        Applies padding on watchOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Custom-watchOS", alt: "With Padding") {
                    With Padding
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlPadding-Default-watchOS", alt: "No Padding") {
                    No Padding
                }
            }
        }
    }
}

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorDirection``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
