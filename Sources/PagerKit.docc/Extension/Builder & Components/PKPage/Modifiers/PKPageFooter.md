
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

Adds a custom footer view to a specific page, visible only when that page is active.

## Overview

The `pkPageFooter(_:)` modifier attaches a custom view—typically text—to a `PKPage`. This footer appears **only when the associated page is currently displayed** and is **not shown** on other pages unless explicitly added.

Footers are overlaid on top of page content and do not scroll. They are ideal for:
- Page-specific captions
- Step indicators (e.g., "This is Page 1")
- Contextual hints

Positioning is controlled globally via `PKPagesView` modifiers like `.pkPageControlFooterAlignment(_:)` and `.pkPageControlIndicatorAlignment(_:)`.

## Parameters

| Name      | Type                        | Description |
|-----------|-----------------------------|-------------|
| `content` | `@ViewBuilder () -> Content` | The view to display as the footer for this page. |

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
            .pkPageFooter{
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
        On iOS, the `pkPageFooter(_:)` modifier adds a text footer ("This is Page 1") to the first page, visible only when active.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPage-PKPageFooter-iOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPage-PKPageFooter-iOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("iPadOS") {
        On iPadOS, the `pkPageFooter(_:)` modifier displays the per-page footer text, optimized for larger screens and dynamic type.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageFooter-iPadOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageFooter-iPadOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("macOS") {
        On macOS, the `pkPageFooter(_:)` modifier shows the footer text only on the active page, supporting mouse hover and selection.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageFooter-macOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageFooter-macOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("tvOS") {
        On tvOS, the `pkPageFooter(_:)` modifier presents the footer text with focus-based visibility and high contrast.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageFooter-tvOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageFooter-tvOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("visionOS") {
        On visionOS, the `pkPageFooter(_:)` modifier renders the footer text with spatial awareness and focus-driven interaction.
        @Row(numberOfColumns: 2) {
            @Column(size: 2){
                @Image(source: "Documentation-PKPage-PKPageFooter-visionOS-Default", alt: "Default") {
                    Default
                }
                @Image(source: "Documentation-PKPage-PKPageFooter-visionOS-Custom", alt: "Custom") {
                    Custom
                }
            }
        }
    }
    @Tab("watchOS") {
        On watchOS, the `pkPageFooter(_:)` modifier adds a text footer ("This is Page 1") to the first page, visible only when active.
        @Row(numberOfColumns: 2) {
            @Column {
                @Image(source: "Documentation-PKPage-PKPageFooter-watchOS-Default", alt: "Default") {
                    Default
                }
            }
            @Column {
                @Image(source: "Documentation-PKPage-PKPageFooter-watchOS-Custom", alt: "Custom") {
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
