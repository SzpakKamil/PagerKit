# PagerKit
![Swift Version](https://img.shields.io/badge/Swift-5.9%2B-teal.svg)
![Platforms](https://img.shields.io/badge/Platforms-iOS%2014.0+%20|%20iPadOS%2014.0+%20|%20macOS%2011.0+%20|%20watchOS%2010.0+%20|%20tvOS%2014.0+%20|%20visionOS%201.0+-15437D.svg)
![Banner](./Resources/PagerKit-Banner.webp#gh-light-mode-only)
![Banner](./Resources/PagerKit-Banner~dark.webp#gh-dark-mode-only)

Build customizable, page-based navigation in SwiftUI. PagerKit offers a layout-aware alternative to native tab views with full architectural control.

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

* **Platform Parity**: Wraps `UIPageViewController` on iOS/visionOS/tvOS. Uses custom SwiftUI implementations on macOS/watchOS.
* **Lifecycle Precision**: Configure transition durations and lifecycle events declaratively.
* **Result Builders**: Construct pages with `PKPageBuilder` supporting conditionals and platform logic.
* **Adaptive Indicators**: Customize indicator style, alignment, orientation, and images.
* **Unified API**: Adapt to platform behaviors with a consistent API.

## Layout Control

Integrate PagerKit into any view hierarchy. No enforced layout structure.

* **Container Integrity**: Page reliably within small, embedded containers.
* **Hierarchy Awareness**: Avoid full-screen takeovers.
* **Brand Consistency**: Style page indicators with custom assets.
* **Orientation Control**: Set horizontal or vertical navigation flow programmatically.

## Implementation

PagerKit components and modifiers are prefixed with `PK`.

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
Enhanced configuration with custom indicators and lifecycle events:

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
Key modifiers for customizing indicators and managing navigation logic.

### Style
* `pkPageControlIndicatorAlignment(_:)`: Set alignment for the page indicator control.
* `pkPageControlIndicatorBackgroundStyle(_:)`: Configure the background style.
* `pkPageControlIndicatorDirection(_:)`: Define the layout direction (horizontal/vertical).
* `pkPageIndicatorImage(_:)`: Provide a custom image for a page's indicator.

### Logic
* `pkCurrentPageIndex(_:)`: Bind the current page index to a state variable.
* `pkPageNavigationOrientation(_:)`: Set paging orientation (horizontal/vertical).
* `pkOnManualPageChange(_:)`: Execute closure on manual swipes.
* `pkOnAutoPageChange(_:)`: Execute closure on programmatic transitions.
* `pkOnTransitionStart(_:)` / `pkOnTransitionEnd(_:)`: Sync UI with paging animation lifecycle.

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
