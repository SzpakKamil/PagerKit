# ``PagerKit/PKPageControlIndicatorDirection/topToBottom``

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

Arranges page control dots vertically from top to bottom.

## Overview

Arranges dots vertically from top to bottom. Maps to `UIPageControl.Direction.topToBottom` on supported platforms (iOS 16.0+, tvOS 16.0+).

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.Direction` | Maps to UIKit's `topToBottom` direction. |

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
        .pkPageControlIndicatorDirection(.topToBottom)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        Dots arranged vertically from top to bottom.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-iOS", alt: "Top to Bottom") {
                    Top to Bottom
                }
            }
        }
    }
    @Tab("iPadOS") {
        Dots arranged vertically from top to bottom.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-iPadOS", alt: "Top to Bottom") {
                    Top to Bottom
                }
            }
        }
    }
    @Tab("macOS") {
        Dots arranged vertically from top to bottom.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-macOSTahoe", alt: "Top to Bottom") {
                    Top to Bottom
                }
            }
        }
    }
    @Tab("tvOS") {
        Dots arranged vertically from top to bottom.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-tvOS", alt: "Top to Bottom") {
                    Top to Bottom
                }
            }
        }
    }
    @Tab("visionOS") {
        Dots arranged vertically from top to bottom.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-visionOS", alt: "Top to Bottom") {
                    Top to Bottom
                }
            }
        }
    }
    @Tab("watchOS") {
        Dots arranged vertically from top to bottom.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Top-To-Bottom-watchOS", alt: "Top to Bottom") {
                    Top to Bottom
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
- ``PagerKit/PKPageControlIndicatorDirection/bottomToTop``
