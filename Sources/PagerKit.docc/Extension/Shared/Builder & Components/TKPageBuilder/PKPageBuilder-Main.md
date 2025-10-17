# ``PagerKit/PKPageBuilder``

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

Result builder for constructing arrays of ``PKPage`` components.

## Overview

The `PKPageBuilder` is a Swift result builder in the `PagerKit` framework, designed to simplify the construction of arrays of `PKPage` components for use within a `PKPagesView`. It provides a declarative syntax for aggregating `PKPage` instances, supporting various scenarios such as variadic components, optional content, conditional branches, and platform-specific pages. The `PKPageBuilder` is integral to the `PagerKit` framework, enabling developers to define the pages to be displayed in a tab-based navigation interface efficiently and expressively. It is typically used as a `@resultBuilder` within the `PKPagesView` to collect and organize pages for rendering.

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1") }
            PKPage { Text("Page 2") }
            if #available(iOS 16.0, *) {
                PKPage { Text("iOS 16+ Page") }
            }else{
                PKPage { Text("Else Block Page") }
            }
        }
    }
}
```
