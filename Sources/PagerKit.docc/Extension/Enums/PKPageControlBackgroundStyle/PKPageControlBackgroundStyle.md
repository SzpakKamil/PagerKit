# ``PagerKit/PKPageControlIndicatorBackgroundStyle``

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

Defines the background appearance for page control dots.

## Overview

Customizes the background style for page control dots in a `PKPagesView`.

### Cases
| Case | Description |
|------|-------------|
| `automatic` | Platform-adaptive: background on drag (iOS/iPadOS), minimal (macOS/watchOS/visionOS), prominent (tvOS). |
| `minimal` | Displays only the dots without a background. |
| `prominent` | Displays a light grey background behind the dots. |

### Private Properties
| Property Name | Type | Description |
|---------------|------|-------------|
| `uiKitValue` | `UIPageControl.BackgroundStyle` | Maps the case to a UIKit background style. |

### Private Static Methods
| Method Name | Return Type | Description |
|-------------|-------------|-------------|
| `caseFor(uiKitValue:)` | `PKPageControlIndicatorBackgroundStyle` | Converts a UIKit style, defaulting to `automatic`. |

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
        .pkPageControlIndicatorBackgroundStyle(.prominent) // Always show light grey background
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        Defines the appearance of page control dots on iOS.
        @TabNavigator {
            @Tab("Automatic") {
                No background when static; background during drag.
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
                Light grey background.
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
        Defines the appearance of page control dots on iPadOS.
        @TabNavigator {
            @Tab("Automatic") {
                No background when static; background during drag.
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
            @Tab("Minimal") {
                Dots only.
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
            @Tab("Prominent") {
                Light grey background.
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
        }
    }
    @Tab("macOS") {
        Defines the appearance of page control dots on macOS.
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
        Defines the appearance of page control dots on tvOS.
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
        Defines the appearance of page control dots on visionOS.
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
        Defines the appearance of page control dots on watchOS.
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
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle/automatic``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle/minimal``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle/prominent``
