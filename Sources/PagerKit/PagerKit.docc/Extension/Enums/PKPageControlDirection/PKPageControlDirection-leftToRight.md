# ``PagerKit/PKPageControlIndicatorDirection/leftToRight``

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

Arranges page control dots horizontally from left to right.

## Overview

Arranges dots horizontally from left to right. Maps to `UIPageControl.Direction.leftToRight` on supported platforms (iOS 16.0+, tvOS 16.0+).

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.Direction` | Maps to UIKit's `leftToRight` direction. |

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
        .pkPageControlIndicatorDirection(.leftToRight)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        Dots arranged horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-iOS", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("iPadOS") {
        Dots arranged horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-iPadOS", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("macOS") {
        Dots arranged horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-macOSTahoe", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("tvOS") {
        Dots arranged horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-tvOS", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("visionOS") {
        Dots arranged horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-visionOS", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("watchOS") {
        Dots arranged horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Left-To-Right-watchOS", alt: "Left to Right") {
                    Left to Right
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
- ``PagerKit/PKPageControlIndicatorDirection/rightToLeft``
- ``PagerKit/PKPageControlIndicatorDirection/topToBottom``
- ``PagerKit/PKPageControlIndicatorDirection/bottomToTop``
