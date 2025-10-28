# PagerKit
![Swift Version](https://img.shields.io/badge/Swift-5.9+-teal.svg)
![Platforms](https://img.shields.io/badge/Platforms-iOS%2014.0+%20|%20iPadOS%2014.0+%20|%20macOS%2014.0+%20|%20tvOS%2014.0+%20|%20visionOS%201.0+%20|%20watchOS%2010.0+-15437D.svg)
![License](https://img.shields.io/badge/License-MIT-C8ECFE.svg)
![Banner](./Resources/PagerKit-Banner.png#gh-light-mode-only)
![Banner](./Resources/PagerKit-BannerDark.png#gh-dark-mode-only)

**PagerKit** is a SwiftUI package that provides a highly customizable, native page-based navigation component for iOS, iPadOS, macOS, tvOS, visionOS, and watchOS. It leverages `UIPageViewController` for iOS, iPadOS, tvOS, and visionOS, ensuring a seamless, platform-specific experience, with a SwiftUI-reimplemented equivalent for macOS and watchOS. With extensive modifiers for styling, navigation, and interaction, `PagerKit` is ideal for creating modern, user-focused paging interfaces.

For detailed documentation, visit the [PagerKit Documentation](https://kamilszpak.com/documentation/pagerkit).

## Table of Contents
- [Features](#features)
- [Resources](#resources)
- [Usage](#usage)
  - [Basic Usage](#basic-usage)
  - [Advanced Customization](#advanced-customization)
- [Modifiers](#modifiers)
- [Installation](#installation)
- [Requirements](#requirements)
- [License](#license)

## Features
- **Native Integration**: Uses `UIPageViewController` for iOS, iPadOS, tvOS, and visionOS, and a SwiftUI-based implementation for macOS and watchOS, ensuring authentic platform behavior.
- **Extensive Customization**: Modify appearance with alignment, background styles, dot directions, tint colors, and custom indicator images via SwiftUI modifiers.
- **Dynamic Navigation**: Supports real-time page index updates with `Binding<Int>`, manual and automatic page change callbacks, and transition event handling.
- **Result Builder Support**: Uses `PKPageBuilder` for declarative page creation, supporting conditionals, optional content, and platform-specific pages.
- **Data-Driven Pages**: Integrates `ForEach` for dynamic page generation from data collections.
- **Accessibility**: Built-in support for VoiceOver and Dynamic Type ensures inclusivity across platforms.
- **Platform Consistency**: Unified SwiftUI API with tailored behaviors (e.g., optimized dot layout for watchOS small screens).
- **Flexible Layout**: Embed in custom layouts with customizable page control placement and navigation orientation.

## Resources
Explore additional PagerKit resources to deepen your understanding:
- **Documentation**: Dive into detailed PagerKit documentation.
  - [Modifiers](https://kamilszpak.com/documentation/pagerkit/modifiers)
  - [PKPage Model](https://kamilszpak.com/documentation/pagerkit/pkpage)
  - [PKPageBuilder](https://kamilszpak.com/documentation/pagerkit/pkpagebuilder)
  - [PKPageControlDirection](https://kamilszpak.com/documentation/pagerkit/pkpagecontroldirection)
  - [PKPageControlBackgroundStyle](https://kamilszpak.com/documentation/pagerkit/pkpagecontrolbackgroundstyle)
  - [PKPageDirection](https://kamilszpak.com/documentation/pagerkit/pkpagedirection)

## Usage
The `PKPagesView` component is a SwiftUI `View` that adapts to each platform, offering a simple yet powerful API for page-based navigation and customization.

### Basic Usage
A minimal setup for a functional page view across platforms:
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1").font(.title) }
            PKPage { Text("Page 2").font(.title) }
            PKPage { Text("Page 3").font(.title) }
        }
    }
}
```

### Advanced Customization
Enhance the page view with styling, navigation orientation, and interaction callbacks:
```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    @State private var currentPage = 0
    
    var body: some View {
        VStack {
            PKPagesView {
                PKPage { Text("Page 1").font(.title) }
                PKPage { Text("Page 2").font(.title) }
                if #available(iOS 16.0, *) {
                    PKPage { Text("Page 3 (iOS 16.0+)").font(.title) }
                } else {
                    PKPage { Text("Page 3").font(.title) }
                }
            }
            .pkPageControlAlignment(.center)
            .pkPageControlBackgroundStyle(.prominent)
            .pkPageControlDirection(.leftToRight)
            .pkPageControlCurrentIndicatorTintColor(.blue)
            .pkPageControlIndicatorTintColor(.gray)
            .pkPageNavigationOrientation(.vertical)
            .pkOnManualPageChange { index, direction in
                print("Page changed to \(index) in \(direction) direction")
            }
            Text("Current Page: \(currentPage + 1)")
        }
        .padding()
    }
}
```

## Modifiers
The `PagerKit` package offers a variety of modifiers to customize the appearance, behavior, and interaction of `PKPagesView`. Below are examples from each category. For a complete list, refer to the [PagerKit Documentation](https://kamilszpak.com/documentation/pagerkit/modifiers).

### Pager Styling Modifiers
- **`pkPageNavigationOrientation(_:)`**: Sets the navigation orientation (`.horizontal` or `.vertical`) for page transitions.
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkPageOptions(_:)`**: Configures `UIPageViewController` options (e.g., inter-page spacing, transition style).
  *Available on iOS, iPadOS, tvOS, visionOS.*

### Control Styling Modifiers
- **`pkPageControlAlignment(_:)`**: Sets the alignment of the page control (e.g., `.topLeading`, `.bottom`).
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkPageControlAlignment(spacing:alignment:)`**: Configures alignment with custom spacing from the screen edge.
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkPageControlBackgroundStyle(_:)`**: Applies a background style (`.automatic`, `.minimal`, `.prominent`).
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkPageControlDirection(_:)`**: Sets the layout direction of page control dots (e.g., `.natural`, `.leftToRight`, `.topToBottom`).
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkPageControlHidesForSinglePage(_:)`**: Hides the page control for a single page.
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkPageControlCurrentIndicatorTintColor(_:)`**: Sets the tint color for the current page indicator.
  *Available on iOS, iPadOS, visionOS, macOS, watchOS.*
- **`pkPageControlIndicatorTintColor(_:)`**: Sets the tint color for non-current page indicators.
  *Available on iOS, iPadOS, visionOS, macOS, watchOS.*
- **`pkPageControlPreferredIndicatorImage(_:)`**: Sets a custom image for non-current page indicators.
  *Available on iOS, iPadOS, visionOS, macOS, watchOS.*
- **`pkPageControlPreferredCurrentPageIndicatorImage(_:)`**: Sets a custom image for the current page indicator.
  *Available on iOS, iPadOS, visionOS, macOS, watchOS.*
- **`pkPageControlCurrentIndicatorImage(_:for:)`**: Sets a custom image for the current page indicator at a specific page index.
  *Available on iOS, iPadOS, visionOS, macOS, watchOS.*
- **`pkPageControlAllowsContinuousInteraction(_:)`**: Enables/disables dragging across page control dots.
  *Available on iOS, iPadOS.*

### Logic and Trigger Modifiers
- **`pkCurrentPageIndex(_:)`**: Binds the current page index to a `Binding<Int>`.
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkOnManualPageChange(_:)`**: Executes a closure with previous and current page indices on manual page changes.
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkOnManualPageChange(_:direction:)`**: Executes a closure with the current page index and `PKPageDirection` on manual page changes.
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkOnAutoPageChange(_:)`**: Executes a closure with previous and current page indices on automatic page changes.
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkOnAutoPageChange(_:direction:)`**: Executes a closure with the current page index and `PKPageDirection` on automatic page changes.
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkOnTransitionStart(_:)`**: Executes a closure when a page transition begins (likely with indices or direction, pending correction).
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*
- **`pkOnTransitionEnd(_:)`**: Executes a closure when a page transition completes (likely with indices or direction, pending correction).
  *Available on iOS, iPadOS, tvOS, visionOS, macOS, watchOS.*

## Installation
### Swift Package Manager
Add `PagerKit` to your project via Swift Package Manager. The minimum version required is **1.0.0** (hypothetical, as actual version is not specified).

#### In `Package.swift`:
```swift
dependencies: [
    .package(url: "https://github.com/SzpakKamil/PagerKit.git", from: "1.0.0")
]
```

#### In Xcode:
1. Go to **File > Swift Packages > Add Package Dependency**.
2. Enter the URL: `https://github.com/SzpakKamil/PagerKit.git`.
3. Select version **1.0.0** or later.

## Requirements
- **iOS**: 14.0+
- **iPadOS**: 14.0+
- **macOS**: 14.0+
- **tvOS**: 14.0+
- **visionOS**: 1.0+
- **watchOS**: 10.0+
- **Swift**: 5.9+
- **Xcode**: 15.0+

## License
`PagerKit` is released under the MIT license.
