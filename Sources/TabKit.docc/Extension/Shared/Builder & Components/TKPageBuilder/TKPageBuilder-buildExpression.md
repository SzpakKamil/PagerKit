# ``TabKit/TKPageBuilder/buildExpression(_:)``

Builds a block from variadic `TKPage` expressions.

## Overview

The `buildExpression(_:)` method in the `TKPageBuilder` result builder accepts a variadic number of ``TKPage`` instances and returns them as an array. This method enables the `TabKit` framework to process individual ``TKPage`` components or expressions, converting them into a consistent array format for use in tab-based navigation structures. It is a key part of the result builder's ability to handle single or multiple page expressions in a declarative manner.

### Parameters
| Parameter Name | Type | Description |
|----------------|------|-------------|
| `components` | `TKPage...` | A variadic list of ``TKPage`` instances to be included in the resulting array. |

### Example Usage
```swift
import SwiftUI
import TabKit

struct ContentView: View {
    var body: some View {
        TKPagesView{
            TKPage { Text("First Page") }
        }
    }
}
```

## Read Also
- ``TabKit/TKPage``
- ``TabKit/TKPageBuilder``
- ``TabKit/TKPageBuilder/buildBlock()``
- ``TabKit/TKPageBuilder/buildBlock(_:)-(TKPage...)``
- ``TabKit/TKPageBuilder/buildOptional(_:)``
- ``TabKit/TKPageBuilder/buildEither(first:)``
- ``TabKit/TKPageBuilder/buildEither(second:)``
- ``TabKit/TKPageBuilder/buildExpression(_:)``
- ``TabKit/TKPageBuilder/buildLimitedAvailability(_:)``
