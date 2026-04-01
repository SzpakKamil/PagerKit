# ``PagerKit/PKPageControlIndicatorDirection/bottomToTop``

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

Arranges page control dots vertically from bottom to top.

## Overview

Arranges dots vertically from bottom to top. Maps to `UIPageControl.Direction.bottomToTop` on supported platforms (iOS 16.0+, tvOS 16.0+).

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.Direction` | Maps to UIKit's `bottomToTop` direction. |

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
        .pkPageControlIndicatorDirection(.bottomToTop)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        Dots arranged vertically from bottom to top.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-iOS", alt: "Bottom to Top") {
                    Bottom to Top
                }
            }
        }
    }
    @Tab("iPadOS") {
        Dots arranged vertically from bottom to top.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-iPadOS", alt: "Bottom to Top") {
                    Bottom to Top
                }
            }
        }
    }
    @Tab("macOS") {
        Dots arranged vertically from bottom to top.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-macOSTahoe", alt: "Bottom to Top") {
                    Bottom to Top
                }
            }
        }
    }
    @Tab("tvOS") {
        Dots arranged vertically from bottom to top.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-tvOS", alt: "Bottom to Top") {
                    Bottom to Top
                }
            }
        }
    }
    @Tab("visionOS") {
        Dots arranged vertically from bottom to top.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-visionOS", alt: "Bottom to Top") {
                    Bottom to Top
                }
            }
        }
    }
    @Tab("watchOS") {
        Dots arranged vertically from bottom to top.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Bottom-To-Top-watchOS", alt: "Bottom to Top") {
                    Bottom to Top
                }
            }
        }
    }
}

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorDirection``
- ``PagerKit/PKPageControlIndicatorDirection/natural``
- ``PagerKit/PKPageControlIndicatorDirection/leftToRight``
- ``PagerKit/PKPageControlIndicatorDirection/rightToLeft``
- ``PagerKit/PKPageControlIndicatorDirection/topToBottom``
