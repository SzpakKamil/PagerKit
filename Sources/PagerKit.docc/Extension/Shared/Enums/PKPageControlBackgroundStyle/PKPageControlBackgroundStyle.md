# ``PagerKit/PKPageControlBackgroundStyle``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(tvOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
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

The `PKPageControlBackgroundStyle` enum in the `PagerKit` framework specifies the background style for page control dots in a `PKPagesView`. It provides three cases: `automatic`, `minimal`, and `prominent`. The `prominent` style displays a light grey background behind the control dots, while the `minimal` style shows only the dots without a background. The `automatic` style adapts to the platform: on iOS and iPadOS, a background appears when dragging over the dots (pressed state) and is hidden otherwise (normal state); on macOS, it behaves like `minimal` (no background); on tvOS, it behaves like `prominent` (always showing a background); and on visionOS, it shows a `prominent` background during drag interactions and `minimal` when not dragging. When UIKit is available (on iOS, iPadOS, tvOS, and visionOS), the enum maps to `UIPageControl.BackgroundStyle` via the `uiKitValue` property, with `caseFor(uiKitValue:)` enabling conversion from UIKit styles, defaulting to `automatic` for unknown cases. This enum is essential for customizing the visual presentation of page control indicators in tab-based navigation.

### Cases
| Case | Description |
|------|-------------|
| `automatic` | Adapts background behavior to the platform: shows a background on drag for iOS/iPadOS, acts as `minimal` on macOS, acts as `prominent` on tvOS, and toggles between `prominent` (drag) and `minimal` (no drag) on visionOS. |
| `minimal` | Displays only the page control dots without a background. |
| `prominent` | Displays a light grey background behind the page control dots. |

### Properties
| Property Name | Type | Description |
|---------------|------|-------------|
| `uiKitValue` | `UIPageControl.BackgroundStyle` | Maps the `PKPageControlBackgroundStyle` case to a UIKit background style (available when UIKit is imported, not on macOS). |

### Static Methods
| Method Name | Return Type | Description |
|-------------|-------------|-------------|
| `caseFor(uiKitValue:)` | `PKPageControlBackgroundStyle` | Converts a `UIPageControl.BackgroundStyle` to a `PKPageControlBackgroundStyle`, defaulting to `automatic` for unknown values (available when UIKit is imported, not on macOS). |

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
        .pageControlBackgroundStyle(.prominent) // Always show light grey background
    }
}
```

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `PKPageControlBackgroundStyle` defines the appearance of page control dots, with the `automatic` style showing a background during drag interactions (pressed state) and no background otherwise (normal state). The `minimal` style displays only the dots, and the `prominent` style includes a light grey background.
        @TabNavigator {
            @Tab("Normal") {
                The normal state applies when the page control dots are not being interacted with.
                @TabNavigator {
                    @Tab("Automatic") {
                        No background is shown in the normal state.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Automatical-Normal", alt: "Automatic Normal") {
                                    Automatic Normal
                                }
                            }
                        }
                    }
                    @Tab("Minimal") {
                        No background is shown, displaying only the dots.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Manual-Normal", alt: "Minimal Normal") {
                                    Minimal Normal
                                }
                            }
                        }
                    }
                    @Tab("Prominent") {
                        A light grey background is shown behind the dots.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Prominent-Normal", alt: "Prominent Normal") {
                                    Prominent Normal
                                }
                            }
                        }
                    }
                }
            }
            @Tab("Pressed") {
                The pressed state applies during drag interactions.
                @TabNavigator {
                    @Tab("Automatic") {
                        A background is shown during drag interactions.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Automatical-Pressed", alt: "Automatic Pressed") {
                                    Automatic Pressed
                                }
                            }
                        }
                    }
                    @Tab("Minimal") {
                        No background is shown, even during drag interactions.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Manual-Pressed", alt: "Minimal Pressed") {
                                    Minimal Pressed
                                }
                            }
                        }
                    }
                    @Tab("Prominent") {
                        A light grey background is shown behind the dots.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Prominent-Pressed", alt: "Prominent Pressed") {
                                    Prominent Pressed
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `PKPageControlBackgroundStyle` behaves similarly to iOS, with the `automatic` style showing a background during drag interactions (pressed state) and no background otherwise (normal state). The `minimal` style displays only the dots, and the `prominent` style includes a light grey background, optimized for larger touch interfaces.
        @TabNavigator {
            @Tab("Normal") {
                The normal state applies when the page control dots are not being interacted with.
                @TabNavigator {
                    @Tab("Automatic") {
                        No background is shown in the normal state.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Automatical-Normal", alt: "Automatic Normal") {
                                    Automatic Normal
                                }
                            }
                        }
                    }
                    @Tab("Minimal") {
                        No background is shown, displaying only the dots.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Manual-Normal", alt: "Minimal Normal") {
                                    Minimal Normal
                                }
                            }
                        }
                    }
                    @Tab("Prominent") {
                        A light grey background is shown behind the dots.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Prominent-Normal", alt: "Prominent Normal") {
                                    Prominent Normal
                                }
                            }
                        }
                    }
                }
            }
            @Tab("Pressed") {
                The pressed state applies during drag interactions.
                @TabNavigator {
                    @Tab("Automatic") {
                        A background is shown during drag interactions.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Automatical-Pressed", alt: "Automatic Pressed") {
                                    Automatic Pressed
                                }
                            }
                        }
                    }
                    @Tab("Minimal") {
                        No background is shown, even during drag interactions.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Manual-Pressed", alt: "Minimal Pressed") {
                                    Minimal Pressed
                                }
                            }
                        }
                    }
                    @Tab("Prominent") {
                        A light grey background is shown behind the dots.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Prominent-Pressed", alt: "Prominent Pressed") {
                                    Prominent Pressed
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `PKPageControlBackgroundStyle` uses the `minimal` style for `automatic`, showing only the page control dots without a background, while `prominent` displays a light grey background. There is no pressed state distinction due to the mouse-based interaction model.
        @TabNavigator {
            @Tab("Automatic") {
                No background is shown, equivalent to the `minimal` style.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-macOS-Automatical-Normal", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-macOS-Manual-Normal", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                A light grey background is shown behind the dots.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-macOS-Prominent-Normal", alt: "Prominent") {
                            Prominent
                        }
                    }
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `PKPageControlBackgroundStyle` uses the `prominent` style for `automatic`, always displaying a light grey background behind the page control dots, with `minimal` showing only the dots. The design is optimized for remote-based navigation, with no pressed state distinction.
        @TabNavigator {
            @Tab("Automatic") {
                A light grey background is shown, equivalent to the `prominent` style.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-tvOS-Automatical-Normal", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-tvOS-Manual-Normal", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                A light grey background is shown behind the dots.
                @Row(numberOfColumns: 1) {
                    @Column(size: 1) {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-tvOS-Prominent-Normal", alt: "Prominent") {
                            Prominent
                        }
                    }
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `PKPageControlBackgroundStyle` uses the `automatic` style to toggle between a `prominent` background during drag interactions and `minimal` when not dragging. The `minimal` style shows only the dots, and `prominent` includes a light grey background, optimized for spatial interfaces.
        @TabNavigator {
            @Tab("Normal") {
                The normal state applies when the page control dots are not being interacted with.
                @TabNavigator {
                    @Tab("Automatic") {
                        No background is shown in the normal state.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Automatical-Normal", alt: "Automatic Normal") {
                                    Automatic Normal
                                }
                            }
                        }
                    }
                    @Tab("Minimal") {
                        No background is shown, displaying only the dots.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Manual-Normal", alt: "Minimal Normal") {
                                    Minimal Normal
                                }
                            }
                        }
                    }
                    @Tab("Prominent") {
                        A light grey background is shown behind the dots.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Prominent-Normal", alt: "Prominent Normal") {
                                    Prominent Normal
                                }
                            }
                        }
                    }
                }
            }
            @Tab("Pressed") {
                The pressed state applies during drag interactions.
                @TabNavigator {
                    @Tab("Automatic") {
                        A background is shown during drag interactions.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Automatical-Pressed", alt: "Automatic Pressed") {
                                    Automatic Pressed
                                }
                            }
                        }
                    }
                    @Tab("Minimal") {
                        No background is shown, even during drag interactions.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Manual-Pressed", alt: "Minimal Pressed") {
                                    Minimal Pressed
                                }
                            }
                        }
                    }
                    @Tab("Prominent") {
                        A light grey background is shown behind the dots.
                        @Row(numberOfColumns: 1) {
                            @Column(size: 1) {
                                @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Prominent-Pressed", alt: "Prominent Pressed") {
                                    Prominent Pressed
                                }
                            }
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
- ``PagerKit/SKNavigationButtonStyle``
