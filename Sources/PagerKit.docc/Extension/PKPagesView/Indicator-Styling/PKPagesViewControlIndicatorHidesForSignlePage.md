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

Configures the page control to automatically hide when `PKPagesView` contains only one page.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `condition` | `Bool` | `true` hides control for single page; `false` keeps it visible. |

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
        Hides control on iOS for single page.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Custom-iOS", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Default-iOS", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("iPadOS") {
        Hides control on iPadOS for single page.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Custom-iPadOS", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Default-iPadOS", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("macOS") {
        Hides control on macOS for single page.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Custom-macOSTahoe", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Default-macOSTahoe", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("tvOS") {
        Hides control on tvOS for single page.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Custom-tvOS", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Default-tvOS", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("visionOS") {
        Hides control on visionOS for single page.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Custom-visionOS", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Default-visionOS", alt: "Visible") {
                    Visible
                }
            }
        }
    }
    @Tab("watchOS") {
        Hides control on watchOS for single page.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Custom-watchOS", alt: "Hidden") {
                    Hidden
                }
            }
            @Column {
                @Image(source: "Documentation-PKPagesView-PKPagesViewControlIndicatorHidesForSignlePage-Default-watchOS", alt: "Visible") {
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
