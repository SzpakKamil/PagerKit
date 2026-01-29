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

Applies **directional padding** to the **page control container** (indicator + footer).

## Overview

The `pkPageControlPadding(_:_:)` modifier adds **custom spacing** to specific edges of the page control area using an `Edge.Set` and a `CGFloat`. This controls the distance between the **page indicator dots** and **per-page footers** (via ``PKPage/pkPageFooter(_:)``) and the screen edges or content.

- `edges`: `Edge.Set` — `.horizontal`, `.vertical`, `.leading`, `.trailing`, `.top`, `.bottom`, or combinations
- `length`: `CGFloat` — padding amount in points

> Combines with ``pkPageControlFooterAlignment(_:)`` and ``pkPageControlIndicatorAlignment(_:)`` for full layout control.

## Parameters

| Name     | Type       | Description |
|----------|------------|-------------|
| `edges`  | `Edge.Set` | Edges to pad (e.g., `.horizontal`, `.bottom`) |
| `length` | `CGFloat`  | Padding size in points |

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
            .pkPageFooter{
                Text("This is Page 1")
            }
            PKPage {
                Text("Page 2")
                    .font(.title)
            }
            .pkPageFooter{
                Text("This is Page 2")
            }
        }
        .pkPageControlFooterAlignment(.bottomLeading)
        .pkPageControlIndicatorAlignment(.bottomTrailing)
        .pkPageControlPadding(.horizontal, 20)
    }
}
```

## Preview

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `pkPageControlPadding(_:_:)` modifier applies 20pt horizontal padding to the page control, spacing footer and indicator from screen edges.
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
        On iPadOS, the `pkPageControlPadding(_:_:)` modifier adds 20pt horizontal spacing, ideal for split-view or multitasking layouts.
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
        On macOS, the `pkPageControlPadding(_:_:)` modifier ensures 20pt clearance from window edges during mouse interaction.
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
        On tvOS, the `pkPageControlPadding(_:_:)` modifier provides 20pt horizontal breathing room for focus navigation and remote control.
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
        On visionOS, the `pkPageControlPadding(_:_:)` modifier adds 20pt spatial clearance, enhancing depth-aware interaction.
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
        On watchOS, the `pkPageControlPadding(_:_:)` modifier applies compact 20pt horizontal padding on small screens.
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
