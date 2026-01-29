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

The PKPageControlIndicatorBackgroundStyle enum in the PagerKit framework customizes the background style for page control dots in a PKPagesView. It includes three cases: prominent (light grey background), minimal (dots only, no background), and automatic (platform-adaptive: background on drag for iOS/iPadOS, minimal on macOS/watchOS/visionOS, prominent on tvOS). When UIKit is available (iOS, iPadOS, tvOS, visionOS), it maps to UIPageControl.BackgroundStyle via uiKitValue, with caseFor(uiKitValue:) converting UIKit styles, defaulting to automatic.

### Cases
| Case | Description |
|------|-------------|
| `automatic` | Adapts background behavior to the platform: shows a background on drag for iOS/iPadOS, acts as `minimal` on macOS, watchOS, and visionOS, and acts as `prominent` on tvOS. |
| `minimal` | Displays only the page control dots without a background. |
| `prominent` | Displays a light grey background behind the page control dots. |

### Private Properties
| Property Name | Type | Description |
|---------------|------|-------------|
| `uiKitValue` | `UIPageControl.BackgroundStyle` | Maps the `PKPageControlIndicatorBackgroundStyle` case to a UIKit background style (available when UIKit is imported, not on macOS or watchOS). |

### Private Static Methods
| Method Name | Return Type | Description |
|-------------|-------------|-------------|
| `caseFor(uiKitValue:)` | `PKPageControlIndicatorBackgroundStyle` | Converts a `UIPageControl.BackgroundStyle` to a `PKPageControlIndicatorBackgroundStyle`, defaulting to `automatic` for unknown values (available when UIKit is imported, not on macOS or watchOS). |

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
        On iOS, the `PKPageControlIndicatorBackgroundStyle` defines the appearance of page control dots, with the `automatic` style showing a background during drag interactions (pressed state) and no background when static. The `minimal` style displays only the dots, and the `prominent` style includes a light grey background.
        @TabNavigator {
            @Tab("Automatic") {
                The `automatic` style shows no background when static and a background during drag interactions.
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
                No background is shown, displaying only the dots, in both static and pressed states.
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
                A light grey background is shown behind the dots in both static and pressed states.
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
        On iPadOS, the `PKPageControlIndicatorBackgroundStyle` behaves similarly to iOS, with the `automatic` style showing a background during drag interactions (pressed state) and no background when static. The `minimal` style displays only the dots, and the `prominent` style includes a light grey background, optimized for larger touch interfaces.
        @TabNavigator {
            @Tab("Automatic") {
                The `automatic` style shows no background when static and a background during drag interactions.
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
                No background is shown, displaying only the dots, in both static and pressed states.
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
                A light grey background is shown behind the dots in both static and pressed states.
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
        On macOS, the `PKPageControlIndicatorBackgroundStyle` uses the `minimal` style for `automatic`, showing only the page control dots without a background, while `prominent` displays a light grey background. Only the static state is applicable due to the mouse-based interaction model.
        @TabNavigator {
            @Tab("Automatic") {
                No background is shown, equivalent to the `minimal` style.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-macOSTahoe", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-macOSTahoe", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                A light grey background is shown behind the dots.
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
        On tvOS, the `PKPageControlIndicatorBackgroundStyle` uses the `prominent` style for `automatic`, always displaying a light grey background behind the page control dots, with `minimal` showing only the dots. Only the static state is applicable due to the remote-based navigation model.
        @TabNavigator {
            @Tab("Automatic") {
                A light grey background is shown, equivalent to the `prominent` style.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-tvOS", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-tvOS", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                A light grey background is shown behind the dots.
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
        On visionOS, the `PKPageControlIndicatorBackgroundStyle` uses the `minimal` style for `automatic`, showing only the page control dots without a background, while `prominent` displays a light grey background. Only the static state is applicable due to the focus-based interaction model.
        @TabNavigator {
            @Tab("Automatic") {
                No background is shown, equivalent to the `minimal` style.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-visionOS", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-visionOS", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                A light grey background is shown behind the dots.
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
        On watchOS, the `PKPageControlIndicatorBackgroundStyle` uses the `minimal` style for `automatic`, showing only the page control dots without a background, while `prominent` displays a light grey background. Only the static state is applicable due to the touch-based interaction model on small screens.
        @TabNavigator {
            @Tab("Automatic") {
                No background is shown, equivalent to the `minimal` style.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Automatic-Static-watchOS", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-Enums-PKPageControlIndicatorBackgroundStyle-Minimal-Static-watchOS", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                A light grey background is shown behind the dots.
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
