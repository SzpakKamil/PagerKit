# ``PagerKit/PKPageControlDirection/bottomToTop``

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

The `bottomToTop` case of the `PKPageControlDirection` enum in the `PagerKit` framework arranges page control dots in a `PKPagesView` vertically from bottom to top across all platforms (iOS, iPadOS, macOS, tvOS, visionOS, watchOS). On iOS 16.0 and tvOS 16.0 or later (excluding macOS and watchOS), it maps to `UIPageControl.Direction.bottomToTop` via the `uiKitValue` property.

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.Direction` | Maps to UIKit's `bottomToTop` direction (available on iOS 16.0, tvOS 16.0+, not macOS/watchOS). |

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
        .pkPageControlDirection(.bottomToTop)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `bottomToTop` style arranges dots vertically from bottom to top.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-iOS-Bottom-To-Top", alt: "Bottom to Top") {
                    Bottom to Top
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `bottomToTop` style arranges dots vertically from bottom to top, optimized for larger screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-iPadOS-Bottom-To-Top", alt: "Bottom to Top") {
                    Bottom to Top
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `bottomToTop` style arranges dots vertically from bottom to top.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-macOS-Bottom-To-Top", alt: "Bottom to Top") {
                    Bottom to Top
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `bottomToTop` style arranges dots vertically from bottom to top.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-tvOS-Bottom-To-Top", alt: "Bottom to Top") {
                    Bottom to Top
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `bottomToTop` style arranges dots vertically from bottom to top.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-visionOS-Bottom-To-Top", alt: "Bottom to Top") {
                    Bottom to Top
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `bottomToTop` style arranges dots vertically from bottom to top, optimized for small screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-watchOS-Bottom-To-Top", alt: "Bottom to Top") {
                    Bottom to Top
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
- ``PagerKit/PKPageControlDirection/topToBottom``
