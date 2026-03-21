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
}

@Options {
    @AutomaticSeeAlso(disabled)
}

Customizable SwiftUI page-based navigation.

## Overview

PagerKit extends SwiftUI with a flexible page navigation component. It supports iOS, iPadOS, macOS, tvOS, visionOS, and watchOS, integrating native components (`UIPageViewController` on iOS/iPadOS/tvOS/visionOS, and a SwiftUI equivalent on macOS/watchOS) into a unified API.

## Why Use PagerKit?

PagerKit improves upon standard page navigation:

- **Detailed Documentation**: Swift DocC API references.
- **Flexible Placement**: Embed in custom layouts with configurable alignment and orientation.
- **Custom Styling**: Modify alignment, background styles, dot directions, tint colors, and indicator images.
- **Dynamic Navigation**: Update page indices with `Binding<Int>`, handle manual/auto changes, and track transitions.
- **Data-Driven Pages**: Generate pages dynamically with `ForEach`.
- **Result Builder Support**: Create pages declaratively with `PKPageBuilder`, supporting conditionals.
- **Accessibility**: VoiceOver and Dynamic Type support.
- **Platform Consistency**: Unified API with platform-tailored behaviors.

Build accessible, customized, and dynamic navigation interfaces efficiently.

## Customization Modifiers

Tailor appearance, navigation, and behavior using SwiftUI modifiers.

- **Pager Styling**:
  - `.pkPageNavigationOrientation(_:)`: Set navigation orientation (`.horizontal` or `.vertical`).
  - `.pkPageOptions(_:)`: Configure `UIPageViewController` options (e.g., spacing, transition style) on iOS/iPadOS/tvOS/visionOS.

- **Control Styling**:
  - `.pkPageControlIndicatorAlignment(_:)`: Set alignment (e.g., `.topLeading`, `.bottom`).
  - `.pkPageControlIndicatorBackgroundStyle(_:)`: Apply background style (`.automatic`, `.minimal`, `.prominent`).
  - `.pkPageControlIndicatorDirection(_:)`: Configure dot layout direction (e.g., `.natural`, `.leftToRight`).
  - `.pkPageControlIndicatorCurrentIndicatorTintColor(_:)`: Set active indicator tint.
  - `.pkPageControlIndicatorPreferredCurrentPageIndicatorImage(image:)`: Set custom active indicator image.

- **Logic and Triggers**:
  - `.pkCurrentPageIndex(index:)`: Bind current page index.
  - `.pkOnManualPageChange(action:)`: Execute closure on manual changes.
  - `.pkOnTransitionStart(action:)`: Trigger action on transition start.
  - `.pkOnTransitionEnd(action:)`: Trigger action on transition end.

See <doc:Modifiers> for the complete list.

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
        .pkPageControlIndicatorAlignment(spacing: 15, alignment: .leading)
        .pkPageControlIndicatorBackgroundStyle(.prominent)
        .pkPageControlIndicatorDirection(.topToBottom)
        .pkPageControlIndicatorCurrentIndicatorTintColor(.blue)
        .pkPageControlIndicatorTintColor(.gray)
        .pkPageNavigationOrientation(.vertical)
        .pkOnManualPageChange { index, direction in
            print("Page changed to \(index) in \(direction) direction")
        }
        #if os(iOS) || os(iPadOS)
        .pkPageControlIndicatorAllowsContinuousInteraction(true)
        .pkPageOptions([.interPageSpacing: 20])
        #endif
    }
}
```

## Target Use Cases

- **Custom Navigation**: Embed pages in custom layouts.
- **Branded Apps**: Match design with custom styles and images.
- **Dynamic Content**: Generate pages from data collections.
- **Cross-Platform Apps**: Maintain consistency across Apple platforms.
- **Interactive Experiences**: Add real-time feedback with event handling.

## Next Steps

- Integrate PagerKit: <doc:SetUp>.
- Explore modifiers: <doc:Modifiers>.
