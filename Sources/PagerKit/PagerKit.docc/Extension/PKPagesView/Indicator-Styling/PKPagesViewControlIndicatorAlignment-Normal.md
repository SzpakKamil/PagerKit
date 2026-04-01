# ``PagerKit/PKPagesView/pkPageControlIndicatorAlignment(_:)``

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

Sets the alignment of the page control.

## Overview

Configures the alignment of the `UIPageControl` within the `PKPagesView`. Sets the `alignment` property to one of the supported `Alignment` values. Default: `.bottom`.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `alignment` | `Alignment = .bottom` | Alignment of the page control. |

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
        .pkPageControlIndicatorAlignment(.topLeading)
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        Sets page control alignment on iOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Leading-iOS", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-iOS", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Trailing-iOS", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Leading-iOS", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Center-iOS", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Trailing-iOS", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Leading-iOS", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-iOS", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Trailing-iOS", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("iPadOS") {
        Sets page control alignment on iPadOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Leading-iPadOS", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-iPadOS", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Trailing-iPadOS", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Leading-iPadOS", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Center-iPadOS", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Trailing-iPadOS", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Leading-iPadOS", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-iPadOS", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Trailing-iPadOS", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("macOS") {
        Sets page control alignment on macOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Leading-macOSTahoe", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-macOSTahoe", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Trailing-macOSTahoe", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Leading-macOSTahoe", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Center-macOSTahoe", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Trailing-macOSTahoe", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Leading-macOSTahoe", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-macOSTahoe", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Trailing-macOSTahoe", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("tvOS") {
        Sets page control alignment on tvOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Leading-tvOS", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-tvOS", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Trailing-tvOS", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Leading-tvOS", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Center-tvOS", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Trailing-tvOS", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Leading-tvOS", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-tvOS", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Trailing-tvOS", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("visionOS") {
        Sets page control alignment on visionOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Leading-visionOS", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-visionOS", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Trailing-visionOS", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Leading-visionOS", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Center-visionOS", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Trailing-visionOS", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Leading-visionOS", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-visionOS", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Trailing-visionOS", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("watchOS") {
        Sets page control alignment on watchOS.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Leading-watchOS", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-watchOS", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Top-Trailing-watchOS", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Leading-watchOS", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Center-watchOS", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Trailing-watchOS", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Leading-watchOS", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-watchOS", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorAlignment-Bottom-Trailing-watchOS", alt: "Bottom-Trailing") {
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
