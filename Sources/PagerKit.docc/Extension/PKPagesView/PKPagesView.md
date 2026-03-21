# ``PagerKit/PKPagesView``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(tvOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(watchOS, introduced: "10.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}

A SwiftUI view built for page-based navigation.

## Overview

`PKPagesView` provides unified, customizable page-based navigation. It manages a collection of `PKPage` views and offers precise control over orientation, styling, and event handling across all Apple platforms.

## Initializers

| Name | Parameters | Description |
|------|------------|-------------|
| `init(pages:)` | `pages: [PKPage]` | Initialize with an array of pages. |
| `init(pages:)` | `@PKPageBuilder pages: () -> [PKPage]` | Initialize using a declarative builder. |

## Modifiers

### Pager Styling
- `pkPageNavigationOrientation(_:)`: Set horizontal or vertical orientation.
- `pkPageOptions(_:)`: Configure native `UIPageViewController` options.

### Control Styling
- `pkPageControlIndicatorAlignment(_:)`: Position the indicator dots.
- `pkPageControlIndicatorBackgroundStyle(_:)`: Set background (automatic, minimal, prominent).
- `pkPageControlIndicatorDirection(_:)`: Configure dot layout direction.
- `pkPageControlIndicatorHidden(_:)`: Show or hide dots.
- `pkPageControlIndicatorTintColor(_:)`: Set inactive dot color.
- `pkPageControlIndicatorCurrentIndicatorTintColor(_:)`: Set active dot color.
- `pkPageControlIndicatorAllowsContinuousInteraction(_:)`: Enable dragging across dots (iOS/iPadOS).

### Interaction & Logic
- `pkCurrentPageIndex(index:)`: Bind index to a state variable.
- `pkOnManualPageChange(action:)`: Handle user-initiated swipes.
- `pkOnAutoPageChange(action:)`: Handle programmatic transitions.
- `pkOnTransitionStart(action:)`: Trigger logic on animation start.
- `pkOnTransitionEnd(action:)`: Trigger logic on animation end.

## Example Usage

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
        .pkPageControlIndicatorAlignment(spacing: 5, alignment: .bottom)
        .pkPageControlIndicatorBackgroundStyle(.prominent)
        .pkCurrentPageIndex(index: $currentPage)
        .pkOnManualPageChange { index, direction in
            print("Swiped to \(index)")
        }
    }
}
```

## Topics

### Initialisers
- ``PagerKit/PKPagesView/init(pages:)-([PKPage])``
- ``PagerKit/PKPagesView/init(pages:)-(()->[PKPage])``

### Pager Styling
- ``PagerKit/PKPagesView/pkPageNavigationOrientation(_:)``
- ``PagerKit/PKPagesView/pkPageOptions(_:)``

### Control Styling
- ``PagerKit/PKPagesView/pkPageControlIndicatorAlignment(_:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorAlignment(spacing:alignment:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorBackgroundStyle(_:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorDirection(_:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorHidden(_:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorHidesForSignlePage(_:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorTintColor(_:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorCurrentIndicatorTintColor(_:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorAllowsContinuousInteraction(_:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorPreferredIndicatorImage(image:)``
- ``PagerKit/PKPagesView/pkPageControlIndicator(_:forPage:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorCurrentIndicator(_:forPage:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorPreferredCurrentPageIndicatorImage(image:)``

### Logic and Triggers
- ``PagerKit/PKPagesView/pkCurrentPageIndex(index:)``
- ``PagerKit/PKPagesView/pkOnManualPageChange(action:)-((Int,PKPageDirection)->Void)``
- ``PagerKit/PKPagesView/pkOnManualPageChange(action:)-((Int,Int)->Void)``
- ``PagerKit/PKPagesView/pkOnAutoPageChange(action:)-((Int,PKPageDirection)->Void)``
- ``PagerKit/PKPagesView/pkOnAutoPageChange(action:)-((Int,Int)->Void)``
- ``PagerKit/PKPagesView/pkOnTransitionStart(action:)``
- ``PagerKit/PKPagesView/pkOnTransitionEnd(action:)``
