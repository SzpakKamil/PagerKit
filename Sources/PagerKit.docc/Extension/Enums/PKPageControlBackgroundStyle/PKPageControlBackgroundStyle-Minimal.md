# ``PagerKit/PKPageControlBackgroundStyle/minimal``

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

The `minimal` case of the `PKPageControlBackgroundStyle` enum in the `PagerKit` framework customizes the background style for page control dots in a `PKPagesView`. It shows only the dots without any background across all platforms (iOS, iPadOS, macOS, tvOS, visionOS, watchOS), regardless of interaction state (static or pressed). When UIKit is available (iOS, iPadOS, tvOS, visionOS), it maps to `UIPageControl.BackgroundStyle` via the `uiKitValue` property.

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.BackgroundStyle` | Maps the `minimal` case to a UIKit background style (not on macOS or watchOS). |

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
        .pkPageControlBackgroundStyle(.minimal)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `minimal` style displays only the page control dots without a background in both static and pressed states.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Minimal-Static", alt: "Minimal Static") {
                    Static
                }
            }
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Minimal-Pressed", alt: "Minimal Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `minimal` style displays only the page control dots without a background in both static and pressed states, optimized for larger touch interfaces.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Minimal-Static", alt: "Minimal Static") {
                    Static
                }
            }
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Minimal-Pressed", alt: "Minimal Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `minimal` style displays only the page control dots without a background, with only the static state due to the mouse-based interaction model.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-macOS-Minimal", alt: "Minimal") {
                    Minimal
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `minimal` style displays only the page control dots without a background, with only the static state due to the remote-based navigation model.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-tvOS-Minimal", alt: "Minimal") {
                    Minimal
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `minimal` style displays only the page control dots without a background, with only the static state due to the focus-based interaction model.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Minimal", alt: "Minimal") {
                    Minimal
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `minimal` style displays only the page control dots without a background, with only the static state due to the touch-based interaction model on small screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-watchOS-Minimal", alt: "Minimal") {
                    Minimal
                }
            }
        }
    }
}

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlBackgroundStyle``
- ``PagerKit/PKPageControlBackgroundStyle/automatic``
- ``PagerKit/PKPageControlBackgroundStyle/prominent``
