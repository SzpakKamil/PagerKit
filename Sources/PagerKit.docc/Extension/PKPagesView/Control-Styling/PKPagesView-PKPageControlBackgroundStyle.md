# ``PagerKit/PKPagesView/pkPageControlBackgroundStyle(_:)``

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

The `pkPageControlBackgroundStyle(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures the background appearance of the `PageControl` within the `PKPagesView`. It sets the `style` property of `PKPageControlStyle` to one of three supported ``PKPageControlBackgroundStyle`` values: `.automatic`, `.minimal`, or `.prominent`. The behavior of these styles varies by platform. On iOS and iPadOS, `.Automatic` shows no background when static and a background during drag interactions (pressed state), `.minimal` displays only the dots, and `.prominent` includes a light grey background in both states. On macOS, visionOS, and watchOS, `.Automatic` behaves like `.minimal`, showing no background, while on tvOS, `.Automatic` behaves like `.prominent`, always showing a light grey background.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `style` | ``PKPageControlBackgroundStyle`` | The background style of the page control, either `.Automatic`, `.minimal`, or `.prominent`. |

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
        .pkPageControlBackgroundStyle(.prominent)
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `pkPageControlBackgroundStyle` defines the appearance of page control dots, with the `Automatic` style showing a background during drag interactions (pressed state) and no background when static. The `minimal` style displays only the dots, and the `prominent` style includes a light grey background.
        @TabNavigator {
            @Tab("Automatic") {
                The `Automatic` style shows no background when static and a background during drag interactions.
                @Row(numberOfColumns: 2) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Automatic-Static", alt: "Automatic Static") {
                            Static
                        }
                    }
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-iOS-Automatic-Pressed", alt: "Automatic Pressed") {
                            Pressed
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots, in both static and pressed states.
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
            @Tab("Prominent") {
                A light grey background is shown behind the dots in both static and pressed states.
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
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `pkPageControlBackgroundStyle` behaves similarly to iOS, with the `Automatic` style showing a background during drag interactions (pressed state) and no background when static. The `minimal` style displays only the dots, and the `prominent` style includes a light grey background, optimized for larger touch interfaces.
        @TabNavigator {
            @Tab("Automatic") {
                The `Automatic` style shows no background when static and a background during drag interactions.
                @Row(numberOfColumns: 2) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Automatic-Static", alt: "Automatic Static") {
                            Static
                        }
                    }
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Automatic-Pressed", alt: "Automatic Pressed") {
                            Pressed
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots, in both static and pressed states.
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
            @Tab("Prominent") {
                A light grey background is shown behind the dots in both static and pressed states.
                @Row(numberOfColumns: 2) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Prominent-Static", alt: "Prominent Static") {
                            Static
                        }
                    }
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-iPadOS-Prominent-Pressed", alt: "Prominent Pressed") {
                            Pressed
                        }
                    }
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `pkPageControlBackgroundStyle` uses the `minimal` style for `Automatic`, showing only the page control dots without a background, while `prominent` displays a light grey background. Only the static state is applicable due to the mouse-based interaction model.
        @TabNavigator {
            @Tab("Automatic") {
                No background is shown, equivalent to the `minimal` style.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-macOS-Automatic-Static", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-macOS-Minimal-Static", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                A light grey background is shown behind the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-macOS-Prominent-Static", alt: "Prominent") {
                            Prominent
                        }
                    }
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `pkPageControlBackgroundStyle` uses the `prominent` style for `Automatic`, always displaying a light grey background behind the page control dots, with `minimal` showing only the dots. Only the static state is applicable due to the remote-based navigation model.
        @TabNavigator {
            @Tab("Automatic") {
                A light grey background is shown, equivalent to the `prominent` style.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-tvOS-Automatic-Static", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-tvOS-Minimal-Static", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                A light grey background is shown behind the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-tvOS-Prominent-Static", alt: "Prominent") {
                            Prominent
                        }
                    }
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `pkPageControlBackgroundStyle` uses the `minimal` style for `Automatic`, showing only the page control dots without a background, while `prominent` displays a light grey background. Only the static state is applicable due to the focus-based interaction model.
        @TabNavigator {
            @Tab("Automatic") {
                No background is shown, equivalent to the `minimal` style.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Automatic-Static", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Minimal-Static", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                A light grey background is shown behind the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-visionOS-Prominent-Static", alt: "Prominent") {
                            Prominent
                        }
                    }
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `pkPageControlBackgroundStyle` uses the `minimal` style for `Automatic`, showing only the page control dots without a background, while `prominent` displays a light grey background. Only the static state is applicable due to the touch-based interaction model on small screens.
        @TabNavigator {
            @Tab("Automatic") {
                No background is shown, equivalent to the `minimal` style.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-watchOS-Automatic-Static", alt: "Automatic") {
                            Automatic
                        }
                    }
                }
            }
            @Tab("Minimal") {
                No background is shown, displaying only the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-watchOS-Minimal-Static", alt: "Minimal") {
                            Minimal
                        }
                    }
                }
            }
            @Tab("Prominent") {
                A light grey background is shown behind the dots.
                @Row(numberOfColumns: 1) {
                    @Column {
                        @Image(source: "Documentation-PKPageControlBackgroundStyle-watchOS-Prominent-Static", alt: "Prominent") {
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
- ``PagerKit/PKPageControlDirection``
- ``PagerKit/PKPageControlBackgroundStyle``
