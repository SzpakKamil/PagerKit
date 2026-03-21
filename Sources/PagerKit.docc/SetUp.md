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
}

@Options {
    @AutomaticSeeAlso(disabled)
}

Integrate PagerKit into your SwiftUI project.

## Overview

PagerKit provides a customizable SwiftUI page-based navigation component for iOS, iPadOS, macOS, tvOS, visionOS, and watchOS. Add the package using Swift Package Manager (SPM).

## Installing Agent Skill
Install the PagerKit skill for your CLI agent to get expert guidance.

### Using skills.sh:
```bash
npx skills add https://github.com/SzpakKamil/AgentSkills --skill PagerKit
```

### Using ClawdHub:
```bash
npx dlx clawdhub@latest install pagerkit
```

## Adding PagerKit to Your Project

Add PagerKit via Swift Package Manager:

1. In Xcode, select **File > Add Package Dependency**.
2. Enter the URL: `https://github.com/SzpakKamil/PagerKit.git`.
3. Select a version or the `main` branch, then click **Add Package**.
4. Ensure your project uses Swift 5.9+.
5. Import the module:

   ```swift
   import PagerKit
   ```

See the [README](https://github.com/SzpakKamil/PagerKit) for setup instructions, supported versions, and contribution guidelines.

### Example Integration

Minimal `PKPagesView` usage:

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
        .pkCurrentPageIndex(index: $currentPage)
        .pkOnManualPageChange { index, direction in
            print("Page changed to \(index) in \(direction) direction")
        }
    }
}
```

This creates a basic page view with three pages, logging index and direction on manual changes.

## Troubleshooting

- **Package not found**: Verify the URL (`https://github.com/SzpakKamil/PagerKit.git`) and connection.
- **Dependency issues**: Confirm the version or branch exists. Try `main`.
- **Module not recognized**: Ensure the package is added to the target and `import PagerKit` is present.
- **Compatibility errors**: Check deployment targets (iOS 14.0+, macOS 14.0+, tvOS 14.0+, visionOS 1.0+, watchOS 10.0+).

## Next Steps

- Explore modifiers: <doc:Modifiers>
