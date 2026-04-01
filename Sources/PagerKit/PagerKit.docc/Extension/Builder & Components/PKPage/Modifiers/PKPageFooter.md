# ``PagerKit/PKPage/pkPageFooter(_:)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(watchOS, introduced: "10.0")
    @Available(tvOS, introduced: "14.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

Adds a custom footer view, visible only when the page is active.

## Overview

Attaches a custom view (e.g., text) to a `PKPage`. This footer appears **only when the associated page is active**.

Footers overlay the page content and do not scroll. Use them for:
- Page-specific captions.
- Step indicators.
- Contextual hints.

Control positioning globally via `PKPagesView` modifiers like `.pkPageControlFooterAlignment(_:)`.

## Parameters

| Name      | Type                        | Description |
|-----------|-----------------------------|-------------|
| `content` | `@ViewBuilder () -> Content` | View to display as the footer. |

## Example Usage

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage {
                Text("Page 1")
                    .font(.title)
            }
            .pkPageFooter {
                Text("This is Page 1")
            }

            PKPage {
                Text("Page 2")
                    .font(.title)
            }
        }
        .pkPageControlFooterAlignment(.bottomLeading)
        .pkPageControlIndicatorAlignment(.bottomTrailing)
    }
}
```

## Preview

@TabNavigator {
    @Tab("iOS") {
        Adds a text footer to the first page on iOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPage-PKPageFooter-Default-iOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPage-PKPageFooter-Custom-iOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        Displays the per-page footer text on iPadOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageFooter-Default-iPadOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageFooter-Custom-iPadOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        Shows the footer text on the active page on macOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageFooter-Default-macOSTahoe", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageFooter-Custom-macOSTahoe", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("tvOS") {
        Presents the footer text on tvOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageFooter-Default-tvOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageFooter-Custom-tvOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        Renders the footer text on visionOS.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageFooter-Default-visionOS", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageFooter-Custom-visionOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        Adds a text footer to the first page on watchOS.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPage-PKPageFooter-Default-watchOS", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPage-PKPageFooter-Custom-watchOS", alt: "Custom") {
                    Custom
                }
            }
        }
    }
}

## Read Also

### Related Modifiers & Types
- ``PagerKit/PKPagesView/pkPageControlFooterAlignment(_:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorAlignment(_:)``
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
