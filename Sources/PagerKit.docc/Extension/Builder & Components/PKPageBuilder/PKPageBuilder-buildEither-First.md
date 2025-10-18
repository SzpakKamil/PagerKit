# ``PagerKit/PKPageBuilder/buildEither(first:)``

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

Builds a block from the first branch of a conditional ``PKPage`` array.

## Overview

The `buildEither(first:)` method in the `PKPageBuilder` result builder handles the first branch of a conditional statement, accepting an array of ``PKPage`` instances and returning it unchanged. This method supports Swift's result builder syntax for conditional logic (e.g., `if-else` statements) within the `PagerKit` framework, allowing developers to define alternative sets of pages based on runtime conditions.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `component` | `[PKPage]` | An array of ``PKPage`` instances representing the first branch of a conditional. |

### Example Usage
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    @State var isActive = true
    
    var body: some View {
        PKPagesView{
            if isActive {
                PKPage { Text("Active Page") }
            } else {
                PKPage { Text("Inactive Page") } // This block is used
            }   
        }
    }
}
```

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPageBuilder``
- ``PagerKit/PKPageBuilder/buildBlock()``
- ``PagerKit/PKPageBuilder/buildBlock(_:)-(PKPage...)``
- ``PagerKit/PKPageBuilder/buildBlock(_:)-([PKPage])``
- ``PagerKit/PKPageBuilder/buildOptional(_:)``
- ``PagerKit/PKPageBuilder/buildEither(second:)``
- ``PagerKit/PKPageBuilder/buildExpression(_:)``
- ``PagerKit/PKPageBuilder/buildLimitedAvailability(_:)``
