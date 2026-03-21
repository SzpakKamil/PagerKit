# ``PagerKit/PKPageControlIndicatorBackgroundStyle/minimal``

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

Displays only the page control dots without a background.

## Overview

Customizes the background style to show only the dots, without any background, across all platforms. Maps to `UIPageControl.BackgroundStyle` on supported platforms.

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.BackgroundStyle` | Maps `minimal` to UIKit style. |

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
        .pkPageControlIndicatorBackgroundStyle(.minimal)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        Dots only, no background.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-iOS", alt: "Minimal Static") {
                    Static
                }
            }
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Pressed-iOS", alt: "Minimal Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("iPadOS") {
        Dots only, no background.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-iPadOS", alt: "Minimal Static") {
                    Static
                }
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Pressed-iPadOS", alt: "Minimal Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("macOS") {
        Dots only.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-macOSTahoe", alt: "Minimal") {
                    Minimal
                }
            }
        }
    }
    @Tab("tvOS") {
        Dots only.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-tvOS", alt: "Minimal") {
                    Minimal
                }
            }
        }
    }
    @Tab("visionOS") {
        Dots only.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-visionOS", alt: "Minimal") {
                    Minimal
                }
            }
        }
    }
    @Tab("watchOS") {
        Dots only.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-watchOS", alt: "Minimal") {
                    Minimal
                }
            }
        }
    }
}

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle/automatic``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle/prominent``
