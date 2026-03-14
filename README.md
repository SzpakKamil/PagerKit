# `PagerKit`
![Swift Version](https://img.shields.io/badge/Swift-5.9+-teal.svg)
![Platforms](https://img.swiftpackageindex.com/SzpakKamil/PagerKit/platforms.svg)
![License](https://img.shields.io/badge/License-MIT-C8ECFE.svg)

![Banner](./Resources/PagerKit-Banner.webp#gh-light-mode-only)
![Banner](./Resources/PagerKit-Banner~dark.webp#gh-dark-mode-only)

# Paging, Unbound.
### I stopped settling for the limits of `.tabViewStyle`. PagerKit augments Apple’s native logic with layout-aware tools that fit your design system—not the other way around.

Forget rigid carousels. I built **PagerKit** to give you back architectural control. It uses native SwiftUI patterns to provide the structural flexibility that standard components usually miss.

> **Native Terminal Integration**
> In v1.1.1, I introduced Agent Skill. Now you can inject technical patterns into your AI-assisted CLI workflows for instant integration.

Visit the [Site](https://kamilszpak.com/pagerkit) or [Documentation](https://documentation.kamilszpak.com/documentation/pagerkit).

---

## Table of Contents

- [Production-Ready Features](#production-ready-features)
- [Your Layout, Your Rules](#your-layout-your-rules)
- [Instant Integration](#instant-integration)
- [Modifiers](#modifiers)
- [Resources](#resources)
- [Installation](#installation)
- [Requirements](#requirements)
- [License](#license)

## Production-Ready Features
I handled the structural complexity so you can focus on the interface. PagerKit stays out of the way until you need its power.

- **Native, Expanded**: Uses `UIPageViewController` for iOS and tvOS, with custom SwiftUI implementations for macOS and watchOS to ensure authentic platform behavior.
- **Lifecycle Timing**: Set duration-based transitions and react to precise timing events without leaving the declarative world.
- **Result Builders**: It feels like a first-party tool, using `PKPageBuilder` to support conditionals and platform-specific logic natively.
- **Adaptive Indicators**: I took the standard paging indicator and made it yours. Style, align, and orient markers to match your brand perfectly.
- **Ecosystem Wide**: One API that respects platform-specific behaviors from the wrist to the desktop without platform-specific drift.

## Your Layout, Your Rules
Paging shouldn't force your hand. Shape your vision with tools that respect your frame and your architectural rules.

- **Compact View Integrity**: Engineered for tight hierarchies. PagerKit brings reliable paging to small, embedded containers where native system views often clip or fail.
- **Hierarchy Aware**: Paging that respects your view structure instead of forcing full-screen patterns on your users.
- **Brand Integration**: Bring your own assets to indicators and keep your app’s identity front and center with pixel-perfect alignment.
- **Flexible Orientation**: Control navigation flow independently while staying within the SwiftUI layout engine.

## Instant Integration
Kill the boilerplate. Drop PagerKit in and build complex paging systems with zero overhead.

The `PK` prefix is used also to minimize the PagerKit. usage to just PK. I know about Swift namespacing but for project constraints and other my frameworks parity I use package shortcut prefix.

### Basic Usage
A minimal setup for a functional page view across platforms:

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("First Page") }
            PKPage { Text("Second Page") }
            PKPage { Text("Third Page") }
        }
    }
}
```

### Advanced Customization
Enhance the experience with custom indicators, orientation, and lifecycle events:

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    @State private var currentIndex = 0

    var body: some View {
        PKPagesView {
            PKPage { Color.red }.pkPageIndicatorImage(Image(systemName: "flame"))
            PKPage { Color.blue }.pkPageIndicatorImage(Image(systemName: "drop"))
            PKPage { Color.green }.pkPageIndicatorImage(Image(systemName: "leaf"))
        }
        .pkCurrentPageIndex($currentIndex)
        .pkPageNavigationOrientation(.vertical)
        .pkPageControlIndicatorAlignment(.trailing)
        .pkPageControlIndicatorBackgroundStyle(.prominent)
        .pkPageControlIndicatorCurrentIndicatorTintColor(.white)
        .pkOnManualPageChange { index, direction in
            print("User swiped to \(index) moving \(direction)")
        }
    }
}
```

## Modifiers
Explore the full range of modifiers to personalize indicators, configure transitions, and manage logic. For a complete list, refer to the [Documentation](https://documentation.kamilszpak.com/documentation/pagerkit/modifiers).

### Appearance & Style
- `pkPageControlIndicatorAlignment(_:)`: Position dots exactly where you need them.
- `pkPageControlIndicatorBackgroundStyle(_:)`: Choose between `.minimal`, `.prominent`, or `.automatic`.
- `pkPageControlIndicatorDirection(_:)`: Layout dots vertically or horizontally.
- `pkPageControlIndicatorCurrentIndicatorImage(_:for:)`: Use specific icons for specific pages.

### Navigation & Logic
- `pkPageNavigationOrientation(_:)`: Switch between horizontal and vertical flows.
- `pkOnManualPageChange(_:)`: React to user-initiated swipes.
- `pkOnAutoPageChange(_:)`: Track programmatically triggered transitions.
- `pkOnTransitionStart(_:)` / `pkOnTransitionEnd(_:)`: Sync your UI with the paging lifecycle.

## Resources
- **Documentation**: Detailed [API Reference](https://documentation.kamilszpak.com/documentation/pagerkit).
- **GitHub Repo**: Track issues and help refine the future of paging.
- **Swift Package Index**: Check [Compatibility](https://swiftpackageindex.com/SzpakKamil/PagerKit) across all platforms.

## Installation

### Swift Package Manager
Add `PagerKit` via SPM. The current stable version is **1.1.1**.

```swift
dependencies: [
    .package(url: "https://github.com/SzpakKamil/PagerKit.git", from: "1.1.1")
]
```

### Agent Skill
Get expert guidance directly in your terminal:
```bash
npx skills add https://github.com/SzpakKamil/AgentSkills --skill PagerKit
```

## Requirements
- **Platforms**: iOS 14.0+, macOS 14.0+, tvOS 14.0+, watchOS 10.0+, visionOS 1.0+
- **Tools**: Swift 5.9+, Xcode 15.0+

## License
`PagerKit` is released under the MIT license.
