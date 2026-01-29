# ``PagerKit/PKPagesView/pkPageControlIndicatorHidesForSignlePage(_:)``

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

The `pkPageControlIndicatorHidesForSignlePage(_:)` modifier of the `PKPagesView` struct in the `PagerKit` framework configures the page control to be hidden when the `PKPagesView` contains only one `PKPage`. When set to `true`, the page control is hidden if there is only one page; when `false`, it remains visible.

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
        .pkPageControlIndicatorHidesForSignlePage(true)
    }
}
```

## Preview

### Images

@TabNavigator {
    @Tab("iOS") {
        On iOS, the `pkPageControlIndicatorHidesForSignlePage` modifier hides the page control when there is only one page when set to `true`.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-iOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-iOS-False", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `pkPageControlIndicatorHidesForSignlePage` modifier hides the page control for a single page when set to `true`, optimized for larger screens.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-iPadOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-iPadOS-False", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `pkPageControlIndicatorHidesForSignlePage` modifier hides the page control for a single page when set to `true`, supporting mouse-based navigation.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-macOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-macOS-False", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `pkPageControlIndicatorHidesForSignlePage` modifier hides the page control for a single page when set to `true`, supporting remote-based navigation.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-tvOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-tvOS-False", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `pkPageControlIndicatorHidesForSignlePage` modifier hides the page control for a single page when set to `true`, adapting to focus-based interaction.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-visionOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-visionOS-False", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `pkPageControlIndicatorHidesForSignlePage` modifier hides the page control for a single page when set to `true`, optimized for small screens and touch-based interaction.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-watchOS-True", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPages-PageControlIndicatorHidesForSignlePage-watchOS-False", alt: "Visible") {
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
- ``PagerKit/PKPageControlIndicatorDirection``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
