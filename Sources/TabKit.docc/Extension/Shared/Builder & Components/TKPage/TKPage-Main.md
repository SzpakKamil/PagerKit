# ``TabKit/TKPage``

Component for creating pages

## Overview

The `TKPage` struct in the `TabKit` framework is a core component for creating individual pages within a tab-based navigation structure in SwiftUI applications. It encapsulates a SwiftUI view as its content, providing a flexible way to define and display pages. The `TKPage` struct is designed to work seamlessly with SwiftUI's view hierarchy and supports platform-specific hosting on iOS and iPadOS through a `UIHostingController` when UIKit is available. It also includes an optional `progress` closure for tracking or reporting page-related progress, making it versatile for dynamic tab interfaces.

### Properties Grid
| Property Name | Type | Description |
|---------------|------|-------------|
| `content` | `AnyView` | The SwiftUI view that defines the content of the page. |
| `hostingViewController` | `UIHostingController<AnyView>` | A UIKit hosting controller for the page content, available when UIKit is imported (iOS and iPadOS). |
| `progress` | `(() -> Any)?` | An optional closure for tracking or reporting progress related to the page. |

### Example Usage
```swift
import SwiftUI
import TabKit

struct ContentView: View {
    var body: some View {
        TKPages{
            TKPage {
                VStack {
                    Text("Welcome")
                        .font(.title)
                    Text("This is a sample page")
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
```

## Topics

### Initializers
- ``TabKit/TKPage/init(content:)``
