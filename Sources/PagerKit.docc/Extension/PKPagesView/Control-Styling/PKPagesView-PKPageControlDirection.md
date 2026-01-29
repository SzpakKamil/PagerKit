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
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-iOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-iOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-iOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-iOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-iOS-Bottom-To-Top", alt: "Bottom to Top") {
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
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-iPadOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-iPadOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-iPadOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-iPadOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-iPadOS-Bottom-To-Top", alt: "Bottom to Top") {
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
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-macOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-macOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-macOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-macOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-macOS-Bottom-To-Top", alt: "Bottom to Top") {
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
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-tvOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-tvOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-tvOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-tvOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-tvOS-Bottom-To-Top", alt: "Bottom to Top") {
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
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-visionOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-visionOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-visionOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-visionOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-visionOS-Bottom-To-Top", alt: "Bottom to Top") {
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
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-watchOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-watchOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-watchOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-watchOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlIndicatorDirection-watchOS-Bottom-To-Top", alt: "Bottom to Top") {
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
