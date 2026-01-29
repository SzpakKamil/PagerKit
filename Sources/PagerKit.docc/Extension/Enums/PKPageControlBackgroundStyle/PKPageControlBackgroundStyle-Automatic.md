# ``PagerKit/PKPageControlBackgroundStyle/automatic``

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

The `automatic` case of the `PKPageControlBackgroundStyle` enum in the `PagerKit` framework customizes the background style for page control dots in a `PKPagesView`. It adapts to the platform: on iOS and iPadOS, it shows a light grey background during drag interactions (pressed state) and no background when static; on macOS, watchOS, and visionOS, it behaves like `minimal` (no background); on tvOS, it behaves like `prominent` (always showing a light grey background). When UIKit is available (iOS, iPadOS, tvOS, visionOS), it maps to `UIPageControl.BackgroundStyle` via the `uiKitValue` property.

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.BackgroundStyle` | Maps the `automatic` case to a UIKit background style (not on macOS or watchOS). |

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
        .pkPageControlBackgroundStyle(.automatic)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `automatic` style shows a light grey background during drag interactions (pressed state) and no background when static.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Automatical-Static", alt: "Automatic Static") {
                    Static
                }
            }
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Automatical-Pressed", alt: "Automatic Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `automatic` style shows a light grey background during drag interactions (pressed state) and no background when static, optimized for larger touch interfaces.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Automatical-Static", alt: "Automatic Static") {
                    Static
                }
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Automatical-Pressed", alt: "Automatic Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `automatic` style shows no background, equivalent to the `minimal` style, due to the mouse-based interaction model.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-macOS-Automatical", alt: "Automatic") {
                    Automatic
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `automatic` style always shows a light grey background, equivalent to the `prominent` style, due to the remote-based navigation model.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-tvOS-Automatical", alt: "Automatic") {
                    Automatic
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `automatic` style shows no background, equivalent to the `minimal` style, due to the focus-based interaction model.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Automatical.jpg", alt: "Automatic") {
                    Automatic
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `automatic` style shows no background, equivalent to the `minimal` style, due to the touch-based interaction model on small screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-watchOS-Automatical", alt: "Automatic") {
                    Automatic
                }
            }
        }
    }
}

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlBackgroundStyle``
- ``PagerKit/PKPageControlBackgroundStyle/minimal``
- ``PagerKit/PKPageControlBackgroundStyle/prominent``
