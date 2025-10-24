# ``PagerKit/PKPageControlDirection/natural``

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

Adapts page control dots to the system layout direction.

## Overview

The `natural` case of the `PKPageControlDirection` enum in the `PagerKit` framework arranges page control dots in a `PKPagesView` based on the system layout direction (left-to-right or right-to-left) across all platforms (iOS, iPadOS, macOS, tvOS, visionOS, watchOS). On iOS 16.0 and tvOS 16.0 or later (excluding macOS and watchOS), it maps to `UIPageControl.Direction.natural` via the `uiKitValue` property.

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.Direction` | Maps to UIKit's `natural` direction (available on iOS 16.0, tvOS 16.0+, not macOS/watchOS). |

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
        .pkPageControlDirection(.natural)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `natural` style adapts to the system layout direction (left-to-right or right-to-left).
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-iOS-Natural", alt: "Natural") {
                    Natural
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `natural` style adapts to the system layout direction, optimized for larger screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-iPadOS-Natural", alt: "Natural") {
                    Natural
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `natural` style adapts to the system layout direction.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-macOS-Natural", alt: "Natural") {
                    Natural
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `natural` style adapts to the system layout direction.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-tvOS-Natural", alt: "Natural") {
                    Natural
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `natural` style adapts to the system layout direction.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-visionOS-Natural", alt: "Natural") {
                    Natural
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `natural` style adapts to the system layout direction, optimized for small screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-watchOS-Natural", alt: "Natural") {
                    Natural
                }
            }
        }
    }
}

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlDirection``
- ``PagerKit/PKPageControlDirection/leftToRight``
- ``PagerKit/PKPageControlDirection/rightToLeft``
- ``PagerKit/PKPageControlDirection/topToBottom``
- ``PagerKit/PKPageControlDirection/bottomToTop``
