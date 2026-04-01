# ``PagerKit/PKPageControlIndicatorBackgroundStyle/automatic``

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

Adapts the background appearance for page control dots based on the platform.

## Overview

Customizes the background style for page control dots, adapting to the platform:
- **iOS/iPadOS**: Light grey background during drag (pressed), no background when static.
- **macOS/watchOS/visionOS**: Behaves like `minimal` (no background).
- **tvOS**: Behaves like `prominent` (always shows light grey background).

Maps to `UIPageControl.BackgroundStyle` on supported platforms.

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.BackgroundStyle` | Maps `automatic` to UIKit style. |

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
        .pkPageControlIndicatorBackgroundStyle(.automatic)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        Shows light grey background during drag, none when static.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-iOS", alt: "Automatic Static") {
                    Static
                }
            }
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Pressed-iOS", alt: "Automatic Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("iPadOS") {
        Shows light grey background during drag, none when static.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-iPadOS", alt: "Automatic Static") {
                    Static
                }
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Pressed-iPadOS", alt: "Automatic Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("macOS") {
        No background (equivalent to `minimal`).
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-macOSTahoe", alt: "Automatic") {
                    Automatic
                }
            }
        }
    }
    @Tab("tvOS") {
        Always shows light grey background (equivalent to `prominent`).
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-tvOS", alt: "Automatic") {
                    Automatic
                }
            }
        }
    }
    @Tab("visionOS") {
        No background (equivalent to `minimal`).
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-visionOS", alt: "Automatic") {
                    Automatic
                }
            }
        }
    }
    @Tab("watchOS") {
        No background (equivalent to `minimal`).
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-watchOS", alt: "Automatic") {
                    Automatic
                }
            }
        }
    }
}

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle/minimal``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle/prominent``
