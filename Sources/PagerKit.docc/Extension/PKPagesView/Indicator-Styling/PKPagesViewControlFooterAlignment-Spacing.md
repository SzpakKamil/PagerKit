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
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iOS-Bottom-Trailing", alt: "Bottom-Trailing") {
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
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iPadOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iPadOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iPadOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iPadOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iPadOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iPadOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iPadOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iPadOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-iPadOS-Bottom-Trailing", alt: "Bottom-Trailing") {
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
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-macOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-macOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-macOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-macOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-macOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-macOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-macOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-macOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-macOS-Bottom-Trailing", alt: "Bottom-Trailing") {
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
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-tvOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-tvOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-tvOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-tvOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-tvOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-tvOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-tvOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-tvOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-tvOS-Bottom-Trailing", alt: "Bottom-Trailing") {
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
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-visionOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-visionOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-visionOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-visionOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-visionOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-visionOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-visionOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-visionOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-visionOS-Bottom-Trailing", alt: "Bottom-Trailing") {
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
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-watchOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-watchOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-watchOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-watchOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-watchOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-watchOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-watchOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-watchOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlFooterAlignment-watchOS-Bottom-Trailing", alt: "Bottom-Trailing") {
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
