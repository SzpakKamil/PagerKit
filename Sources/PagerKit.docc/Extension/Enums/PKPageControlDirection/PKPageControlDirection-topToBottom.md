# ``PagerKit/PKPageControlDirection/topToBottom``

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

The `topToBottom` case of the `PKPageControlDirection` enum in the `PagerKit` framework arranges page control dots in a `PKPagesView` vertically from top to bottom across all platforms (iOS, iPadOS, macOS, tvOS, visionOS, watchOS). On iOS 16.0 and tvOS 16.0 or later (excluding macOS and watchOS), it maps to `UIPageControl.Direction.topToBottom` via the `uiKitValue` property.

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.Direction` | Maps to UIKit's `topToBottom` direction (available on iOS 16.0, tvOS 16.0+, not macOS/watchOS). |

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
        .pkPageControlDirection(.topToBottom)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `topToBottom` style arranges dots vertically from top to bottom.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-iOS-Top-To-Bottom", alt: "Top to Bottom") {
                    Top to Bottom
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `topToBottom` style arranges dots vertically from top to bottom, optimized for larger screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-iPadOS-Top-To-Bottom", alt: "Top to Bottom") {
                    Top to Bottom
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `topToBottom` style arranges dots vertically from top to bottom.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-macOS-Top-To-Bottom", alt: "Top to Bottom") {
                    Top to Bottom
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `topToBottom` style arranges dots vertically from top to bottom.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-tvOS-Top-To-Bottom", alt: "Top to Bottom") {
                    Top to Bottom
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `topToBottom` style arranges dots vertically from top to bottom.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-visionOS-Top-To-Bottom", alt: "Top to Bottom") {
                    Top to Bottom
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `topToBottom` style arranges dots vertically from top to bottom, optimized for small screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-watchOS-Top-To-Bottom", alt: "Top to Bottom") {
                    Top to Bottom
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
- ``PagerKit/PKPageControlDirection/leftToRight``
- ``PagerKit/PKPageControlDirection/rightToLeft``
- ``PagerKit/PKPageControlDirection/bottomToTop``
