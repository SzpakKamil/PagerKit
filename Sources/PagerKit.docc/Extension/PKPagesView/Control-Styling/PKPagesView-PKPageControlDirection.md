# ``PagerKit/PKPagesView/pkPageControlDirection(_:)``

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

The `pkPageControlDirection(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures the layout direction of the `PageControl` dots within the `PKPagesView`. It sets the `direction` to one of the supported ``PKPageControlDirection`` values: `.natural`, `.leftToRight`, `.rightToLeft`, `.topToBottom`, or `.bottomToTop`. The `.natural` direction adapts to the system’s layout direction (left-to-right or right-to-left).
## Parameters

| Name | Type | Description |
|------|------|-------------|
| `direction` | ``PKPageControlDirection`` | The layout direction of the page control dots, such as `.natural`, `.leftToRight`, `.rightToLeft`, `.topToBottom`, or `.bottomToTop`. Defaults to `.natural`. |

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
        .pkPageControlDirection(.topToBottom)
    }
}
```

## Preview

### Images


@TabNavigator {
    @Tab("iOS") {
        On iOS, the ``PKPageControlDirection`` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-iOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-iOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-iOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-iOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-iOS-Bottom-To-Top", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the ``PKPageControlDirection`` defines the layout direction of page control dots, optimized for larger screens.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-iPadOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-iPadOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-iPadOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-iPadOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-iPadOS-Bottom-To-Top", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the ``PKPageControlDirection`` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-macOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-macOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-macOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-macOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-macOS-Bottom-To-Top", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the ``PKPageControlDirection`` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-tvOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-tvOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-tvOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-tvOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-tvOS-Bottom-To-Top", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the ``PKPageControlDirection`` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-visionOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-visionOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-visionOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-visionOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-visionOS-Bottom-To-Top", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the ``PKPageControlDirection`` defines the layout direction of page control dots, optimized for small screens.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-watchOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-watchOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-watchOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-watchOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlDirection-watchOS-Bottom-To-Top", alt: "Bottom to Top") {
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
- ``PagerKit/PKPageControlBackgroundStyle``
- ``PagerKit/PKPageControlDirection``
