# ``PagerKit/PKPageControlIndicatorDirection/natural``

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

Arranges dots based on the system layout direction (left-to-right or right-to-left). Maps to `UIPageControl.Direction.natural` on supported platforms (iOS 16.0+, tvOS 16.0+).

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.Direction` | Maps to UIKit's `natural` direction. |

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
        .pkPageControlIndicatorDirection(.natural)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        Adapts to system layout direction.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-iOS", alt: "Natural") {
                    Natural
                }
            }
        }
    }
    @Tab("iPadOS") {
        Adapts to system layout direction.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-iPadOS", alt: "Natural") {
                    Natural
                }
            }
        }
    }
    @Tab("macOS") {
        Adapts to system layout direction.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-macOSTahoe", alt: "Natural") {
                    Natural
                }
            }
        }
    }
    @Tab("tvOS") {
        Adapts to system layout direction.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-tvOS", alt: "Natural") {
                    Natural
                }
            }
        }
    }
    @Tab("visionOS") {
        Adapts to system layout direction.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-visionOS", alt: "Natural") {
                    Natural
                }
            }
        }
    }
    @Tab("watchOS") {
        Adapts to system layout direction.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Natural-watchOS", alt: "Natural") {
                    Natural
                }
            }
        }
    }
}

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorDirection``
- ``PagerKit/PKPageControlIndicatorDirection/leftToRight``
- ``PagerKit/PKPageControlIndicatorDirection/rightToLeft``
- ``PagerKit/PKPageControlIndicatorDirection/topToBottom``
- ``PagerKit/PKPageControlIndicatorDirection/bottomToTop``
