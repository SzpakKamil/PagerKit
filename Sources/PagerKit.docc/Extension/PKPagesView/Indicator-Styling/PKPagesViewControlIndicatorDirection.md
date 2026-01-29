# ``PagerKit/PKPagesView/pkPageControlIndicatorDirection(_:)``

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


Sets the layout direction of page control dots.

## Overview

The `pkPageControlIndicatorDirection(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures the layout direction of the `PageControl` dots within the `PKPagesView`. It sets the `direction` to one of the supported ``PKPageControlIndicatorDirection`` values: `.natural`, `.leftToRight`, `.rightToLeft`, `.topToBottom`, or `.bottomToTop`. The `.natural` direction adapts to the system’s layout direction (left-to-right or right-to-left).
## Parameters

| Name | Type | Description |
|------|------|-------------|
| `direction` | ``PKPageControlIndicatorDirection`` | The layout direction of the page control dots, such as `.natural`, `.leftToRight`, `.rightToLeft`, `.topToBottom`, or `.bottomToTop`. Defaults to `.natural`. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1").font(.title) }
            PKPage { Text("Page 2").font(.title) }
            PKPage { Text("Page 3").font(.title) }
        }
        .pkPageControlIndicatorDirection(.topToBottom)
    }
}
```

## Preview

### Images


@TabNavigator {
    @Tab("iOS") {
        On iOS, the ``PKPageControlIndicatorDirection`` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-iOS", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-iOS", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-iOS", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-iOS", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-iOS", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the ``PKPageControlIndicatorDirection`` defines the layout direction of page control dots, optimized for larger screens.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-iPadOS", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-iPadOS", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-iPadOS", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-iPadOS", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-iPadOS", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the ``PKPageControlIndicatorDirection`` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-macOSTahoe", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-macOSTahoe", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-macOSTahoe", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-macOSTahoe", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-macOSTahoe", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the ``PKPageControlIndicatorDirection`` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-tvOS", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-tvOS", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-tvOS", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-tvOS", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-tvOS", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the ``PKPageControlIndicatorDirection`` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-visionOS", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-visionOS", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-visionOS", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-visionOS", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-visionOS", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the ``PKPageControlIndicatorDirection`` defines the layout direction of page control dots, optimized for small screens.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-watchOS", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-watchOS", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-watchOS", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-watchOS", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-watchOS", alt: "Bottom to Top") {
                            Bottom to Top
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
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
- ``PagerKit/PKPageControlIndicatorDirection``
