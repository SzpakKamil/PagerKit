# ``PagerKit/PKPageBuilder``

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

Result builder for constructing arrays of ``PKPage`` components.

## Overview

Result builder for constructing arrays of `PKPage` components in `PKPagesView`. It supports declarative syntax for aggregating pages, including variadic components, optional content, conditional branches, and platform-specific checks.

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
