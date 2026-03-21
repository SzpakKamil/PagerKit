# ``PagerKit/PKPagesView/pkPageControlIndicatorBackgroundStyle(_:)``

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

Sets the background style of the page control.

## Overview

Configures the background appearance of the page control. Supports `.automatic`, `.minimal`, or `.prominent` styles, adapting to platform-specific behaviors.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `style` | ``PKPageControlIndicatorBackgroundStyle`` | Background style (`.automatic`, `.minimal`, or `.prominent`). |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1").font(.title) }
            PKPage { Text("Page 2").font(.title) }
            PKPage { Text("Page 3").font(.title) }
        }
        .pkPageControlIndicatorBackgroundStyle(.prominent)
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        Sets background style on iOS.
        @TabNavigator {
            @Tab("Automatic") {
                Background visible only during drag.
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
            @Tab("Minimal") {
                Dots only.
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
            @Tab("Prominent") {
                Light grey background always visible.
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
        }
    }
    @Tab("iPadOS") {
        Sets background style on iPadOS.
        @TabNavigator {
            @Tab("Automatic") {
                Background visible only during drag.
                @Row(numberOfColumns: 2) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-iPadOS", alt: "Automatic Static") {
                            Static
                        }
                    }
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Pressed-iPadOS", alt: "Automatic Pressed") {
                            Pressed
                        }
                    }
                }
            }
            @Tab("Minimal") {
                Dots only.
                @Row(numberOfColumns: 2) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-iPadOS", alt: "Minimal Static") {
                            Static
                        }
                    }
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Pressed-iPadOS", alt: "Minimal Pressed") {
                            Pressed
                        }
                    }
                }
            }
            @Tab("Prominent") {
                Light grey background always visible.
                @Row(numberOfColumns: 2) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Static-iPadOS", alt: "Prominent Static") {
                            Static
                        }
                    }
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Pressed-iPadOS", alt: "Prominent Pressed") {
                            Pressed
                        }
                    }
                }
            }
        }
    }
    @Tab("macOS") {
        Sets background style on macOS.
        @TabNavigator {
            @Tab("Automatic") {
                No background (minimal).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-macOSTahoe", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                Dots only.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-macOSTahoe", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                Light grey background.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Static-macOSTahoe", alt: "Prominent") {
                            Prominent
                        }
                    }
                }
            }
        }
    }
    @Tab("tvOS") {
        Sets background style on tvOS.
        @TabNavigator {
            @Tab("Automatic") {
                Light grey background (prominent).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-tvOS", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                Dots only.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-tvOS", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                Light grey background.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Static-tvOS", alt: "Prominent") {
                            Prominent
                        }
                    }
                }
            }
        }
    }
    @Tab("visionOS") {
        Sets background style on visionOS.
        @TabNavigator {
            @Tab("Automatic") {
                No background (minimal).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-visionOS", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                Dots only.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-visionOS", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                Light grey background.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Static-visionOS", alt: "Prominent") {
                            Prominent
                        }
                    }
                }
            }
        }
    }
    @Tab("watchOS") {
        Sets background style on watchOS.
        @TabNavigator {
            @Tab("Automatic") {
                No background (minimal).
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-watchOS", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                Dots only.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-watchOS", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                Light grey background.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Prominent-Static-watchOS", alt: "Prominent") {
                            Prominent
                        }
                    }
                }
            }
        }
    }
}

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorDirection``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
