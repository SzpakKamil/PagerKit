# ``PagerKit/PKPagesView/pkPageControlHidesForSignlePage(_:)``

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

Hides the page control when there is only one page.

## Overview

The `pkPageControlHidesForSignlePage(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures the page control to be hidden when the `PKPagesView` contains only one `PKPage`. When set to `true`, the page control is hidden if there is only one page; when `false`, it remains visible.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `condition` | `Bool` | Determines whether the page control is hidden when there is only one page. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1") }
        }
        .pkPageControlHidesForSignlePage(true)
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `pkPageControlHidesForSignlePage` modifier hides the page control when there is only one page when set to `true`.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-iOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-iOS-False", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `pkPageControlHidesForSignlePage` modifier hides the page control for a single page when set to `true`, optimized for larger screens.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-iPadOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-iPadOS-False", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `pkPageControlHidesForSignlePage` modifier hides the page control for a single page when set to `true`, supporting mouse-based navigation.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-macOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-macOS-False", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `pkPageControlHidesForSignlePage` modifier hides the page control for a single page when set to `true`, supporting remote-based navigation.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-tvOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-tvOS-False", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `pkPageControlHidesForSignlePage` modifier hides the page control for a single page when set to `true`, adapting to focus-based interaction.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-visionOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-visionOS-False", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `pkPageControlHidesForSignlePage` modifier hides the page control for a single page when set to `true`, optimized for small screens and touch-based interaction.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-watchOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlHidesForSignlePage-watchOS-False", alt: "Visible") {
                    Visible
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
