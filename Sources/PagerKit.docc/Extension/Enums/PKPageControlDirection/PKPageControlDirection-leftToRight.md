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

The `leftToRight` case of the `PKPageControlIndicatorDirection` enum in the `PagerKit` framework arranges page control dots in a `PKPagesView` horizontally from left to right across all platforms (iOS, iPadOS, macOS, tvOS, visionOS, watchOS). On iOS 16.0 and tvOS 16.0 or later (excluding macOS and watchOS), it maps to `UIPageControl.Direction.leftToRight` via the `uiKitValue` property.

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.Direction` | Maps to UIKit's `leftToRight` direction (available on iOS 16.0, tvOS 16.0+, not macOS/watchOS). |

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
        On iOS, the `leftToRight` style arranges dots horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlIndicatorDirection-iOS-Left-To-Right", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `leftToRight` style arranges dots horizontally from left to right, optimized for larger screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlIndicatorDirection-iPadOS-Left-To-Right", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `leftToRight` style arranges dots horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlIndicatorDirection-macOS-Left-To-Right", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `leftToRight` style arranges dots horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlIndicatorDirection-tvOS-Left-To-Right", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `leftToRight` style arranges dots horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlIndicatorDirection-visionOS-Left-To-Right", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `leftToRight` style arranges dots horizontally from left to right, optimized for small screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlIndicatorDirection-watchOS-Left-To-Right", alt: "Left to Right") {
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
