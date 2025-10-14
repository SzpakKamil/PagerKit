# ``TabKit/TKPageBuilder``

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

Result builder for constructing arrays of ``TKPage`` components.

## Overview

The `TKPageBuilder` is a Swift result builder in the `TabKit` framework, designed to simplify the construction of arrays of `TKPage` components for use within a `TKPagesView`. It provides a declarative syntax for aggregating `TKPage` instances, supporting various scenarios such as variadic components, optional content, conditional branches, and platform-specific pages. The `TKPageBuilder` is integral to the `TabKit` framework, enabling developers to define the pages to be displayed in a tab-based navigation interface efficiently and expressively. It is typically used as a `@resultBuilder` within the `TKPagesView` to collect and organize pages for rendering.

### Example Usage
```swift
import SwiftUI
import TabKit

struct ContentView: View {
    var body: some View {
        TKPagesView {
            TKPage { Text("Page 1") }
            TKPage { Text("Page 2") }
            if #available(iOS 16.0, *) {
                TKPage { Text("iOS 16+ Page") }
            }else{
                TKPage { Text("Else Block Page") }
            }
        }
    }
}
```
