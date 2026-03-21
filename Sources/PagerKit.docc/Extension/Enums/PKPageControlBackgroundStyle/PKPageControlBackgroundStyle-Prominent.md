# ``PagerKit/PKPageControlIndicatorBackgroundStyle/prominent``

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

Displays a light grey background behind page control dots.

## Overview

Customizes the background style to consistently display a light grey background behind the dots across all platforms. Maps to `UIPageControl.BackgroundStyle` on supported platforms.

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.BackgroundStyle` | Maps `prominent` to UIKit style. |

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
        .pkPageControlIndicatorBackgroundStyle(.prominent)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        Light grey background in static and pressed states.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Static-iOS", alt: "Prominent Static") {
                    Static
                }
            }
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Pressed-iOS", alt: "Prominent Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("iPadOS") {
        Light grey background in static and pressed states.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Static-iPadOS", alt: "Prominent Static") {
                    Static
                }
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Pressed-iPadOS", alt: "Prominent Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("macOS") {
        Light grey background (static only).
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Static-macOSTahoe", alt: "Prominent") {
                    Prominent
                }
            }
        }
    }
    @Tab("tvOS") {
        Light grey background (static only).
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Static-tvOS", alt: "Prominent") {
                    Prominent
                }
            }
        }
    }
    @Tab("visionOS") {
        Light grey background (static only).
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Static-visionOS", alt: "Prominent") {
                    Prominent
                }
            }
        }
    }
    @Tab("watchOS") {
        Light grey background (static only).
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Static-watchOS", alt: "Prominent") {
                    Prominent
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
- ``PagerKit/PKPageControlIndicatorBackgroundStyle/minimal``
