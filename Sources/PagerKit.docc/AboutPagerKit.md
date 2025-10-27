# About PagerKit

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
    @PageImage(purpose: card, source: "PagerKitGreeting")
}

@Options {
    @AutomaticSeeAlso(disabled)
}

Learn about the customizable SwiftUI `PagerKit` package for enhanced page-based navigation functionality.

## Overview

The `PagerKit` package extends SwiftUI’s capabilities with a flexible and customizable page-based navigation component. Supporting iOS, iPadOS, macOS, tvOS, visionOS, and watchOS, it integrates native components (`UIPageViewController` for iOS, iPadOS, tvOS, and visionOS, and a SwiftUI-reimplemented equivalent for macOS and watchOS) into a unified SwiftUI API for seamless, platform-specific solutions.

## Why Use PagerKit?

The `PagerKit` package improves upon standard page navigation with:

- **Detailed Documentation**: Swift DocC with API references for easy adoption.
- **Flexible Placement**: Embed in custom layouts with customizable page control alignment and navigation orientation.
- **Custom Styling**: Modifiers for page control alignment, background styles, dot directions, tint colors, and custom indicator images.
- **Dynamic Navigation**: Real-time page index updates with `Binding<Int>`, manual and automatic page change callbacks, and transition event handling.
- **Data-Driven Pages**: Integrates `ForEach` for dynamic page generation from data collections.
- **Result Builder Support**: Uses `PKPageBuilder` for declarative page creation, supporting conditionals and platform-specific pages.
- **Accessibility**: Supports VoiceOver and Dynamic Type for inclusive experiences.
- **Platform Consistency**: Unified SwiftUI API with tailored behaviors (e.g., optimized dot layout for watchOS small screens).

These features enable developers to create accessible, customized, and dynamic page navigation interfaces efficiently.

## Customization Modifiers

The `PagerKit` package offers modifiers for tailoring appearance, navigation, and behavior using SwiftUI’s dot syntax. Here are some key examples:

- **Pager Styling**:
  - `.pkPageNavigationOrientation(_:)`: Sets navigation orientation (`.horizontal` or `.vertical`) for page transitions.
  - `.pkPageOptions(_:)`: Configures `UIPageViewController` options (e.g., inter-page spacing, transition style) for iOS, iPadOS, tvOS, and visionOS.

- **Control Styling**:
  - `.pkPageControlAlignment(_:)`: Sets page control alignment (e.g., `.topLeading`, `.bottom`).
  - `.pkPageControlBackgroundStyle(_:)`: Applies background style (`.automatic`, `.minimal`, `.prominent`).
  - `.pkPageControlDirection(_:)`: Configures dot layout direction (e.g., `.natural`, `.leftToRight`, `.topToBottom`).
  - `.pkPageControlCurrentIndicatorTintColor(_:)`: Sets tint color for the current page indicator.
  - `.pkPageControlPreferredCurrentPageIndicatorImage(_:)`: Sets a custom image for the current page indicator.

- **Logic and Triggers**:
  - `.pkCurrentPageIndex(index:)`: Binds the current page index to a `Binding<Int>`.
  - `.pkOnManualPageChange(action:)`: Executes a closure with previous and current indices on manual page changes.
  - `.pkOnTransitionStart(action:)`: Triggers an action when a page transition begins.
  - `.pkOnTransitionEnd(action:)`: Triggers an action when a page transition completes.

For a complete list, see <doc:Modifiers>.

Example:

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    @State private var currentPage = 0

    var body: some View {
        PKPagesView {
            PKPage { Text("Page 1").font(.title) }
            PKPage { Text("Page 2").font(.title) }
            if #available(iOS 16.0, *) {
                PKPage { Text("Page 3 (iOS 16.0+)").font(.title) }
            } else {
                PKPage { Text("Page 3").font(.title) }
            }
        }
        .pkPageControlAlignment(spacing: 15, alignment: .leading)
        .pkPageControlBackgroundStyle(.prominent)
        .pkPageControlDirection(.topToBottom)
        .pkPageControlCurrentIndicatorTintColor(.blue)
        .pkPageControlIndicatorTintColor(.gray)
        .pkPageNavigationOrientation(.vertical)
        .pkOnManualPageChange { index, direction in
            print("Page changed to \(index) in \(direction) direction")
        }
        #if os(iOS) || os(iPadOS)
        .pkPageControlAllowsContinuousInteraction(true)
        .pkPageOptions([.interPageSpacing: 20])
        #endif
    }
}
```

## Target Use Cases

The `PagerKit` package is ideal for:
- **Custom Navigation**: Embedding page views in custom layouts with tailored page control placement.
- **Branded Apps**: Matching app design with custom page control styles and indicator images.
- **Dynamic Content**: Generating pages dynamically from data collections using `ForEach`.
- **Cross-Platform Apps**: Consistent navigation across iOS, iPadOS, macOS, tvOS, visionOS, and watchOS.
- **Interactive Experiences**: Adding real-time navigation feedback with event handling modifiers.

## Next Steps

- Learn to integrate the package in <doc:SetUp>.
- Explore modifier details in <doc:Modifiers>.
