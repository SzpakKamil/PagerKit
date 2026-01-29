# ``PagerKit/PKPagesView/pkPageControlAlignment(_:)``

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

The `pkPageControlAlignment(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures the alignment of the `UIPageControl` within the `PKPagesView`. It sets the `alignment` property of `PKPageControlStyle` to one of the supported `Alignment` values: `.topLeading`, `.top`, `.topTrailing`, `.leading`, `.center`, `.trailing`, `.bottomLeading`, `.bottom`, or `.bottomTrailing`. The default alignment is `.bottom`.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `alignment` | `Alignment = .bottom` | The alignment of the page control. Defaults to `.bottom`. |

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
        .pkPageControlAlignment(.topLeading)
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `pkPageControlAlignment` modifier sets the page control alignment to one of nine supported styles.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iOS-Bottom-Trailing", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `pkPageControlAlignment` modifier positions the page control for larger screens with nine alignment styles.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iPadOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iPadOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iPadOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iPadOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iPadOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iPadOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iPadOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iPadOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-iPadOS-Bottom-Trailing", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `pkPageControlAlignment` modifier aligns the page control for mouse-based navigation with nine alignment styles.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-macOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-macOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-macOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-macOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-macOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-macOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-macOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-macOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-macOS-Bottom-Trailing", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `pkPageControlAlignment` modifier sets the page control alignment for remote-based navigation with nine alignment styles.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-tvOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-tvOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-tvOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-tvOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-tvOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-tvOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-tvOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-tvOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-tvOS-Bottom-Trailing", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `pkPageControlAlignment` modifier aligns the page control for focus-based interaction with nine alignment styles.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-visionOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-visionOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-visionOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-visionOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-visionOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-visionOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-visionOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-visionOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-visionOS-Bottom-Trailing", alt: "Bottom-Trailing") {
                            Bottom-Trailing
                        }
                    }
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `pkPageControlAlignment` modifier positions the page control for small screens and touch-based interaction with nine alignment styles.
        @TabNavigator {
            @Tab("Top-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-watchOS-Top-Leading", alt: "Top-Leading") {
                            Top-Leading
                        }
                    }
                }
            }
            @Tab("Top") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-watchOS-Top", alt: "Top") {
                            Top
                        }
                    }
                }
            }
            @Tab("Top-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-watchOS-Top-Trailing", alt: "Top-Trailing") {
                            Top-Trailing
                        }
                    }
                }
            }
            @Tab("Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-watchOS-Leading", alt: "Leading") {
                            Leading
                        }
                    }
                }
            }
            @Tab("Center") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-watchOS-Center", alt: "Center") {
                            Center
                        }
                    }
                }
            }
            @Tab("Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-watchOS-Trailing", alt: "Trailing") {
                            Trailing
                        }
                    }
                }
            }
            @Tab("Bottom-Leading") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-watchOS-Bottom-Leading", alt: "Bottom-Leading") {
                            Bottom-Leading
                        }
                    }
                }
            }
            @Tab("Bottom") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-watchOS-Bottom", alt: "Bottom") {
                            Bottom
                        }
                    }
                }
            }
            @Tab("Bottom-Trailing") {
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPages-PageControlAlignment-watchOS-Bottom-Trailing", alt: "Bottom-Trailing") {
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
- ``PagerKit/PKPageControlDirection``
- ``PagerKit/PKPageControlBackgroundStyle``
