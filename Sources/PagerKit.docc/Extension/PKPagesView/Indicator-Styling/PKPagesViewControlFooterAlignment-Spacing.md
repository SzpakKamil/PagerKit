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

The `pkPageControlFooterAlignment(spacing:alignment:)` modifier configures **both the position and edge distance** of per-page footers (added via ``PKPage/pkPageFooter(_:)``). It offers fine-grained control over layout:

- `alignment`: One of nine `Alignment` values (`.topLeading`, `.top`, `.topTrailing`, `.leading`, `.center`, `.trailing`, `.bottomLeading`, `.bottom`, `.bottomTrailing`). Default: `.bottom`
- `spacing`: `CGFloat` distance from the screen edge. Ignored when `alignment` is `.center`. Default: **10–15 points** (platform-specific)

> This modifier **only affects footers**, not the page indicator dots. Use ``pkPageControlIndicatorAlignment(spacing:alignment:)`` to position dots separately.

## Parameters

| Name        | Type                  | Description |
|-------------|-----------------------|-------------|
| `spacing`   | `CGFloat`             | Distance from screen edge (non-center alignments). Default: 10–15 pt |
| `alignment` | `Alignment = .bottom` | Footer alignment within the safe area |

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
        On iOS, the `pkPageControlFooterAlignment(spacing:alignment:)` modifier sets the footer alignment and spacing from the screen edge for nine supported styles.
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
        On iPadOS, the `pkPageControlFooterAlignment(spacing:alignment:)` modifier positions the footer with specified spacing for larger screens across nine alignment styles.
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
        On macOS, the `pkPageControlFooterAlignment(spacing:alignment:)` modifier aligns the footer with specified spacing for mouse-based navigation across nine alignment styles.
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
        On tvOS, the `pkPageControlFooterAlignment(spacing:alignment:)` modifier sets the footer alignment and spacing for remote-based navigation across nine alignment styles.
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
        On visionOS, the `pkPageControlFooterAlignment(spacing:alignment:)` modifier aligns the footer with specified spacing for focus-based interaction across nine alignment styles.
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
        On watchOS, the `pkPageControlFooterAlignment(spacing:alignment:)` modifier positions the footer with specified spacing for small screens and touch-based interaction across nine alignment styles.
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
