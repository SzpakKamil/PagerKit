# ``PagerKit/PKPageControlBackgroundStyle/prominent``

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

The `prominent` case of the `PKPageControlBackgroundStyle` enum in the `PagerKit` framework customizes the background style for page control dots in a `PKPagesView`. It consistently displays a light grey background behind the dots across all platforms (iOS, iPadOS, macOS, tvOS, visionOS, watchOS), regardless of interaction state (static or pressed). When UIKit is available (iOS, iPadOS, tvOS, visionOS), it maps to `UIPageControl.BackgroundStyle` via the `uiKitValue` property.

### Properties
| Name | Type | Description |
|------|------|-------------|
| `uiKitValue` | `UIPageControl.BackgroundStyle` | Maps the `prominent` case to a UIKit background style (not on macOS or watchOS). |

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
        .pkPageControlBackgroundStyle(.prominent)
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `prominent` style displays a light grey background behind the page control dots in both static and pressed states.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Prominent-Static", alt: "Prominent Static") {
                    Static
                }
            }
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Prominent-Pressed", alt: "Prominent Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `prominent` style displays a light grey background behind the page control dots in both static and pressed states, optimized for larger touch interfaces.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Prominent-Static", alt: "Prominent Static") {
                    Static
                }
                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Prominent-Pressed", alt: "Prominent Pressed") {
                    Pressed
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `prominent` style displays a light grey background behind the page control dots, with only the static state due to the mouse-based interaction model.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-macOS-Prominent", alt: "Prominent") {
                    Prominent
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `prominent` style displays a light grey background behind the page control dots, with only the static state due to the remote-based navigation model.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-tvOS-Prominent", alt: "Prominent") {
                    Prominent
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `prominent` style displays a light grey background behind the page control dots, with only the static state due to the focus-based interaction model.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Prominent.jpg", alt: "Prominent") {
                    Prominent
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `prominent` style displays a light grey background behind the page control dots, with only the static state due to the touch-based interaction model on small screens.
        @Row(numberOfColumns: 1) {
            @Column {
                @Image(source: "Documentation-PKPageControlBackgroundStyle-watchOS-Prominent", alt: "Prominent") {
                    Prominent
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
- ``PagerKit/PKPageControlBackgroundStyle/minimal``
