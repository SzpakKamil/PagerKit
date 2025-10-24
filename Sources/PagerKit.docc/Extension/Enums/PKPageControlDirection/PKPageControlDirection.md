# ``PagerKit/PKPageControlDirection``

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

Defines the layout direction for page control dots.

## Overview

The `PKPageControlDirection` enum in the `PagerKit` framework specifies the layout direction for page control dots in a `PKPagesView`. It provides five cases: `natural` (adapts to system layout), `leftToRight` (horizontal left to right), `rightToLeft` (horizontal right to left), `topToBottom` (vertical top to bottom), and `bottomToTop` (vertical bottom to top). This enum controls how dots are arranged, with horizontal directions for standard layouts and vertical for alternative orientations. On iOS 16.0 and tvOS 16.0 or later (excluding macOS and watchOS), it maps to `UIPageControl.Direction` via `uiKitValue`, with `caseFor(uiKitValue:)` for conversion, defaulting to `natural`.

### Cases
| Case | Description |
|------|-------------|
| `natural` | Adapts to system layout direction (left-to-right or right-to-left). |
| `leftToRight` | Dots laid out horizontally from left to right. |
| `rightToLeft` | Dots laid out horizontally from right to left. |
| `topToBottom` | Dots laid out vertically from top to bottom. |
| `bottomToTop` | Dots laid out vertically from bottom to top. |

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.Direction` | Maps to UIKit direction (available on iOS 16.0, tvOS 16.0+, not macOS/watchOS). |

### Static Methods
| Name | Return Type | Description |
|------|-------------|-------------|
| `caseFor(uiKitValue:)` | `PKPageControlDirection` | Converts UIKit direction, defaults to `natural` (available on iOS 16.0, tvOS 16.0+, not macOS/watchOS). |

## Preview

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1").font(.title) }
            PKPage { Text("Page 2").font(.title) }
        }
        .pkPageControlDirection(.natural) // Adapts to system layout
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `PKPageControlDirection` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-iOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-iOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-iOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-iOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-iOS-Bottom-To-Top", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `PKPageControlDirection` defines the layout direction of page control dots, optimized for larger screens.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-iPadOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-iPadOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-iPadOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-iPadOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-iPadOS-Bottom-To-Top", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `PKPageControlDirection` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-macOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-macOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-macOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-macOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-macOS-Bottom-To-Top", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `PKPageControlDirection` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-tvOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-tvOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-tvOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-tvOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-tvOS-Bottom-To-Top", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `PKPageControlDirection` defines the layout direction of page control dots.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-visionOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-visionOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-visionOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-visionOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-visionOS-Bottom-To-Top", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `PKPageControlDirection` defines the layout direction of page control dots, optimized for small screens.
        @TabNavigator {
            @Tab("Natural") {
                Adapts to system layout direction (left-to-right or right-to-left).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-watchOS-Natural", alt: "Natural") {
                            Natural
                        }
                    }
                }
            }
            @Tab("Left to Right") {
                Dots laid out horizontally from left to right.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-watchOS-Left-To-Right", alt: "Left to Right") {
                            Left to Right
                        }
                    }
                }
            }
            @Tab("Right to Left") {
                Dots laid out horizontally from right to left.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-watchOS-Right-To-Left", alt: "Right to Left") {
                            Right to Left
                        }
                    }
                }
            }
            @Tab("Top to Bottom") {
                Dots laid out vertically from top to bottom.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-watchOS-Top-To-Bottom", alt: "Top to Bottom") {
                            Top to Bottom
                        }
                    }
                }
            }
            @Tab("Bottom to Top") {
                Dots laid out vertically from bottom to top.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlDirection-watchOS-Bottom-To-Top", alt: "Bottom to Top") {
                            Bottom to Top
                        }
                    }
                }
            }
        }
    }
}

## Topics

### Styles
- ``PagerKit/PKPageControlDirection/natural``
- ``PagerKit/PKPageControlDirection/leftToRight``
- ``PagerKit/PKPageControlDirection/rightToLeft``
- ``PagerKit/PKPageControlDirection/topToBottom``
- ``PagerKit/PKPageControlDirection/bottomToTop``
