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

Configures the layout direction of the `PageControl` dots. Supports `.natural`, `.leftToRight`, `.rightToLeft`, `.topToBottom`, and `.bottomToTop`.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `direction` | ``PKPageControlIndicatorDirection`` | Layout direction. Default: `.natural`. |

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
        Sets layout direction on iOS.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-iOS", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Horizontal left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-iOS", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Horizontal right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-iOS", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Vertical top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-iOS", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Vertical bottom to top.
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
        Sets layout direction on iPadOS.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-iPadOS", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Horizontal left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-iPadOS", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Horizontal right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-iPadOS", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Vertical top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-iPadOS", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Vertical bottom to top.
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
        Sets layout direction on macOS.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-macOSTahoe", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Horizontal left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-macOSTahoe", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Horizontal right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-macOSTahoe", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Vertical top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-macOSTahoe", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Vertical bottom to top.
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
        Sets layout direction on tvOS.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-tvOS", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Horizontal left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-tvOS", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Horizontal right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-tvOS", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Vertical top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-tvOS", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Vertical bottom to top.
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
        Sets layout direction on visionOS.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-visionOS", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Horizontal left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-visionOS", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Horizontal right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-visionOS", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Vertical top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-visionOS", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Vertical bottom to top.
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
        Sets layout direction on watchOS.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-watchOS", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Horizontal left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-watchOS", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Horizontal right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-watchOS", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Vertical top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-watchOS", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Vertical bottom to top.
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
