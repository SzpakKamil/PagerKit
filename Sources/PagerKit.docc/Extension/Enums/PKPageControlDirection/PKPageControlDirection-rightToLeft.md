# ``PagerKit/PKPageControlDirection/rightToLeft``

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

The `rightToLeft` case of the `PKPageControlDirection` enum in the `PagerKit` framework arranges page control dots in a `PKPagesView` horizontally from right to left across all platforms (iOS, iPadOS, macOS, tvOS, visionOS, watchOS). On iOS 16.0 and tvOS 16.0 or later (excluding macOS and watchOS), it maps to `UIPageControl.Direction.rightToLeft` via the `uiKitValue` property.

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.Direction` | Maps to UIKit's `rightToLeft` direction (available on iOS 16.0, tvOS 16.0+, not macOS/watchOS). |

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
        .pkPageControlDirection(.rightToLeft)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `rightToLeft` style arranges dots horizontally from right to left.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-iOS-Right-To-Left", alt: "Right to Left") {
                    Right to Left
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `rightToLeft` style arranges dots horizontally from right to left, optimized for larger screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-iPadOS-Right-To-Left", alt: "Right to Left") {
                    Right to Left
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `rightToLeft` style arranges dots horizontally from right to left.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-macOS-Right-To-Left", alt: "Right to Left") {
                    Right to Left
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `rightToLeft` style arranges dots horizontally from right to left.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-tvOS-Right-To-Left", alt: "Right to Left") {
                    Right to Left
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `rightToLeft` style arranges dots horizontally from right to left.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-visionOS-Right-To-Left", alt: "Right to Left") {
                    Right to Left
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `rightToLeft` style arranges dots horizontally from right to left, optimized for small screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlDirection-watchOS-Right-To-Left", alt: "Right to Left") {
                    Right to Left
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
- ``PagerKit/PKPageControlDirection/topToBottom``
- ``PagerKit/PKPageControlDirection/bottomToTop``
