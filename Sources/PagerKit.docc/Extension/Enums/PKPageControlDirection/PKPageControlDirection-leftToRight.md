# ``PagerKit/PKPageControlDirection/leftToRight``

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

The `leftToRight` case of the `PKPageControlDirection` enum in the `PagerKit` framework arranges page control dots in a `PKPagesView` horizontally from left to right across all platforms (iOS, iPadOS, macOS, tvOS, visionOS, watchOS). On iOS 16.0 and tvOS 16.0 or later (excluding macOS and watchOS), it maps to `UIPageControl.Direction.leftToRight` via the `uiKitValue` property.

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
        .pkPageControlDirection(.leftToRight)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `leftToRight` style arranges dots horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlDirection-iOS-Left-To-Right", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `leftToRight` style arranges dots horizontally from left to right, optimized for larger screens.
        @Row(numberOfColumns: 1) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlDirection-iPadOS-Left-To-Right", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `leftToRight` style arranges dots horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlDirection-macOS-Left-To-Right", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `leftToRight` style arranges dots horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlDirection-tvOS-Left-To-Right", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `leftToRight` style arranges dots horizontally from left to right.
        @Row(numberOfColumns: 1) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlDirection-visionOS-Left-To-Right", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `leftToRight` style arranges dots horizontally from left to right, optimized for small screens.
        @Row(numberOfColumns: 1) {
            @Column(size: 1) {
                @Image(source: "Documentation-PKPageControlDirection-watchOS-Left-To-Right", alt: "Left to Right") {
                    Left to Right
                }
            }
        }
    }
}

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlDirection``
- ``PagerKit/PKPageControlDirection/natural``
- ``PagerKit/PKPageControlDirection/rightToLeft``
- ``PagerKit/PKPageControlDirection/topToBottom``
- ``PagerKit/PKPageControlDirection/bottomToTop``