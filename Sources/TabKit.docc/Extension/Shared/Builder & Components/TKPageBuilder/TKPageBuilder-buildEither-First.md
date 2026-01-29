# ``TabKit/TKPageBuilder/buildEither(first:)``

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

Builds a block from the first branch of a conditional ``TKPage`` array.

## Overview

The `buildEither(first:)` method in the `TKPageBuilder` result builder handles the first branch of a conditional statement, accepting an array of ``TKPage`` instances and returning it unchanged. This method supports Swift's result builder syntax for conditional logic (e.g., `if-else` statements) within the `TabKit` framework, allowing developers to define alternative sets of pages based on runtime conditions.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `component` | `[TKPage]` | An array of ``TKPage`` instances representing the first branch of a conditional. |

### Example Usage
```swift
import SwiftUI
import TabKit

struct ContentView: View {
    @State var isActive = true
    
    var body: some View {
        TKPagesView{
            if isActive {
                TKPage { Text("Active Page") }
            } else {
                TKPage { Text("Inactive Page") } // This block is used
            }   
        }
    }
}
```

## Read Also
- ``TabKit/TKPage``
- ``TabKit/TKPageBuilder``
- ``TabKit/TKPageBuilder/buildBlock()``
- ``TabKit/TKPageBuilder/buildBlock(_:)-(TKPage...)``
- ``TabKit/TKPageBuilder/buildBlock(_:)-([TKPage])``
- ``TabKit/TKPageBuilder/buildOptional(_:)``
- ``TabKit/TKPageBuilder/buildEither(second:)``
- ``TabKit/TKPageBuilder/buildExpression(_:)``
- ``TabKit/TKPageBuilder/buildLimitedAvailability(_:)``
