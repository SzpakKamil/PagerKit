# ``PagerKit/PKPageControlIndicatorDirection/rightToLeft``

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

Arranges page control dots horizontally from right to left.

## Overview

Arranges dots horizontally from right to left. Maps to `UIPageControl.Direction.rightToLeft` on supported platforms (iOS 16.0+, tvOS 16.0+).

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.Direction` | Maps to UIKit's `rightToLeft` direction. |

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
        .pkPageControlIndicatorDirection(.rightToLeft)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        Dots arranged horizontally from right to left.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-iOS", alt: "Right to Left") {
                    Right to Left
                }
            }
        }
    }
    @Tab("iPadOS") {
        Dots arranged horizontally from right to left.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-iPadOS", alt: "Right to Left") {
                    Right to Left
                }
            }
        }
    }
    @Tab("macOS") {
        Dots arranged horizontally from right to left.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-macOSTahoe", alt: "Right to Left") {
                    Right to Left
                }
            }
        }
    }
    @Tab("tvOS") {
        Dots arranged horizontally from right to left.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-tvOS", alt: "Right to Left") {
                    Right to Left
                }
            }
        }
    }
    @Tab("visionOS") {
        Dots arranged horizontally from right to left.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-visionOS", alt: "Right to Left") {
                    Right to Left
                }
            }
        }
    }
    @Tab("watchOS") {
        Dots arranged horizontally from right to left.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorDirection-Right-To-Left-watchOS", alt: "Right to Left") {
                    Right to Left
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
- ``PagerKit/PKPageControlIndicatorDirection/topToBottom``
- ``PagerKit/PKPageControlIndicatorDirection/bottomToTop``
