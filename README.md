# PagerKit
![Swift Version](https://img.shields.io/badge/Swift-5.9%2B-teal.svg)
![Platforms](https://img.shields.io/badge/Platforms-iOS%2014.0+%20|%20iPadOS%2014.0+%20|%20macOS%2011.0+%20|%20watchOS%2010.0+%20|%20tvOS%2014.0+%20|%20visionOS%201.0+-15437D.svg)
![Banner](./Resources/PagerKit-Banner.webp#gh-light-mode-only)
![Banner](./Resources/PagerKit-Banner~dark.webp#gh-dark-mode-only)

PagerKit is a SwiftUI library for building customizable, page-based navigation. It offers a flexible, layout-aware alternative to native tab views, giving you architectural control over paging components.

Visit the [Site](https://kamilszpak.com/pagerkit) or [Documentation](https://documentation.kamilszpak.com/documentation/pagerkit).

***

## Table of Contents

* [Core Architecture](#core-architecture)
* [Layout Control](#layout-control)
* [Implementation](#implementation)
* [Modifiers](#modifiers)
* [Resources](#resources)
* [Installation](#installation)
* [Requirements](#requirements)
* [License](#license)

## Core Architecture

* **Platform Parity**: Leverages native `UIPageViewController` on iOS/visionOS/tvOS and custom SwiftUI implementations on macOS/watchOS for authentic platform behavior.
* **Lifecycle Precision**: Declaratively configure transition durations and respond to precise lifecycle events.
* **Result Builders**: Uses `PKPageBuilder` for a native-like integration experience with support for conditionals and platform-specific logic.
* **Adaptive Indicators**: Replace default page indicators. Customize style, alignment, orientation, and use custom images to match your app's design.
* **Unified API**: Provides a consistent API that adapts to platform-specific behaviors without compromising architectural integrity.

## Layout Control

PagerKit is designed to integrate into your existing view hierarchy without forcing a specific layout structure.

* **Container Integrity**: Provides reliable paging behavior, even within small, embedded container views where native solutions may fail.
* **Hierarchy Awareness**: Integrates cleanly with your view hierarchy, avoiding full-screen takeovers.
* **Brand Consistency**: Use custom assets for page indicators to maintain brand consistency with pixel-perfect alignment.
* **Orientation Control**: Programmatically set the navigation flow to horizontal or vertical, independent of the SwiftUI layout direction.

## Implementation

PagerKit components and modifiers are prefixed with `PK` for clarity and to avoid naming conflicts.

### Basic Usage
Minimal setup for a functional page view:

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

### Advanced Configuration
An enhanced configuration with custom indicators and lifecycle events:

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
            print("Navigated to page \(index) via \(direction)")
        }
    }
}
```

## Modifiers
A selection of modifiers for customizing indicators and managing navigation logic.

### Style
* `pkPageControlIndicatorAlignment(_:)`: Sets the alignment for the page indicator control.
* `pkPageControlIndicatorBackgroundStyle(_:)`: Configures the background style of the indicator control.
* `pkPageControlIndicatorDirection(_:)`: Defines the layout direction (horizontal/vertical) for the indicators.
* `pkPageIndicatorImage(_:)`: Provides a custom image for a page's indicator.

### Logic
* `pkCurrentPageIndex(_:)`: Binds the current page index to a state variable.
* `pkPageNavigationOrientation(_:)`: Sets the paging orientation (horizontal/vertical).
* `pkOnManualPageChange(_:)`: Closure executed when the user manually swipes to a new page.
* `pkOnAutoPageChange(_:)`: Closure executed for programmatic page transitions.
* `pkOnTransitionStart(_:)` / `pkOnTransitionEnd(_:)`: Closures to sync UI with the paging animation lifecycle.

## Resources
* **Documentation**: [API Reference](https://documentation.kamilszpak.com/documentation/pagerkit).
* **GitHub**: [SzpakKamil/PagerKit](https://github.com/SzpakKamil/PagerKit) - Track issues and contributions.
* **Index**: [Swift Package Index](https://swiftpackageindex.com/SzpakKamil/PagerKit) - View compatibility and release history.

## Installation

### Swift Package Manager
Add PagerKit as a package dependency in your `Package.swift` file. The current stable version is `1.1.1`.

```swift
dependencies: [
    .package(url: "https://github.com/SzpakKamil/PagerKit.git", from: "1.1.1")
]
```

### Agent Skill
Install the Agent Skill for AI-assisted workflows.
```bash
npx skills add https://github.com/SzpakKamil/AgentSkills --skill PagerKit
```

## Requirements
* **Platforms**: iOS 14.0+, macOS 14.0+, tvOS 14.0+, watchOS 10.0+, visionOS 1.0+
* **Tools**: Swift 5.9+, Xcode 15.0+

## License
PagerKit is released under the MIT license.
