# Set Up

@Metadata {
    @SupportedLanguage(swift)
    @TitleHeading("Getting Started")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(tvOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(watchOS, introduced: "10.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @PageColor(green)
    @PageImage(purpose: card, source: "PagerKitSetUp")
}

@Options {
    @AutomaticSeeAlso(disabled)
}

Learn how to integrate the `PagerKit` package into your SwiftUI project.

## Overview

The `PagerKit` package provides a customizable SwiftUI page-based navigation component for iOS, iPadOS, macOS, tvOS, visionOS, and watchOS. This guide explains how to add the package using Swift Package Manager (SPM).

## Adding PagerKit to Your Project

Add the `PagerKit` package to your project via Swift Package Manager:

1. In Xcode, go to **File > Add Package Dependency**.
2. Enter the package URL: `https://github.com/SzpakKamil/PagerKit.git`.
3. Select a version (e.g., a specific tag) or use the `main` branch, then click **Add Package**.
4. Ensure your project uses Swift 5.9+ for compatibility.
5. Import the module in your SwiftUI view:

   ```swift
   import PagerKit
   ```

For setup instructions, supported versions, and contribution guidelines, see the README at https://github.com/SzpakKamil/PagerKit.

### Example Integration

Here’s a minimal example of using `PKPagesView` in a SwiftUI view:

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    @State private var currentPage = 0
    
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1").font(.title) }
            PKPage { Text("Page 2").font(.title) }
            PKPage { Text("Page 3").font(.title) }
        }
        .pkCurrentPageIndex($currentPage)
        .pkOnManualPageChange { index, direction in
            print("Page changed to \(index) in \(direction) direction")
        }
    }
}
```

This creates a basic page view with three pages that logs the current page index and direction when changed manually.

## Troubleshooting

- **Package not found**: Verify the URL (`https://github.com/SzpakKamil/PagerKit.git`) and your internet connection.
- **Dependency issues**: Confirm the version or branch exists in the repository. Try the `main` branch if unsure.
- **Module not recognized**: Ensure the package is added to your project’s target and `import PagerKit` is included.
- **Compatibility errors**: Check that your project’s deployment target meets iOS 14.0+, iPadOS 14.0+, macOS 14.0+, tvOS 14.0+, visionOS 1.0+, or watchOS 10.0+.

## Next Steps

- Explore modifiers at <doc:Modifiers>
