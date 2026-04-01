# ``PagerKit/PKPagesView/pkPageControlFooterAlignment(spacing:alignment:)``

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

Sets the **alignment and spacing** of the **footer content** from the edge of the screen.

## Overview

Configures **both the position and edge distance** of per-page footers. Offers precise layout control:

- `alignment`: One of nine `Alignment` values (e.g., `.topLeading`). Default: `.bottom`.
- `spacing`: Distance from screen edge. Ignored for `.center` alignment. Default: **10–15 points**.

> **Note:** Affects **only footers**, not indicator dots.

## Parameters

| Name        | Type                  | Description |
|-------------|-----------------------|-------------|
| `spacing`   | `CGFloat`             | Distance from screen edge (non-center). Default: 10–15 pt. |
| `alignment` | `Alignment = .bottom` | Footer alignment. |

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
        .pkPageControlFooterAlignment(spacing: 15, alignment: .topLeading)
    }
}
```

## Preview

@TabNavigator {
    @Tab("iOS") {
        Sets footer alignment and spacing on iOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Leading-iOS", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-iOS", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Trailing-iOS", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Leading-iOS", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Center-iOS", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Trailing-iOS", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Leading-iOS", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-iOS", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Trailing-iOS", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("iPadOS") {
        Sets footer alignment and spacing on iPadOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Leading-iPadOS", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-iPadOS", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Trailing-iPadOS", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Leading-iPadOS", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Center-iPadOS", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Trailing-iPadOS", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Leading-iPadOS", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-iPadOS", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Trailing-iPadOS", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("macOS") {
        Sets footer alignment and spacing on macOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Leading-macOSTahoe", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-macOSTahoe", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Trailing-macOSTahoe", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Leading-macOSTahoe", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Center-macOSTahoe", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Trailing-macOSTahoe", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Leading-macOSTahoe", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-macOSTahoe", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Trailing-macOSTahoe", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("tvOS") {
        Sets footer alignment and spacing on tvOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Leading-tvOS", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-tvOS", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Trailing-tvOS", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Leading-tvOS", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Center-tvOS", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Trailing-tvOS", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Leading-tvOS", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-tvOS", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Trailing-tvOS", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("visionOS") {
        Sets footer alignment and spacing on visionOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Leading-visionOS", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-visionOS", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Trailing-visionOS", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Leading-visionOS", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Center-visionOS", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Trailing-visionOS", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Leading-visionOS", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-visionOS", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Trailing-visionOS", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("watchOS") {
        Sets footer alignment and spacing on watchOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Leading-watchOS", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-watchOS", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Top-Trailing-watchOS", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Leading-watchOS", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Center-watchOS", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Trailing-watchOS", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Leading-watchOS", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-watchOS", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-Bottom-Trailing-watchOS", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
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
