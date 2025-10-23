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

A SwiftUI view thats build for page-based navigation.

## Overview

The `PKPagesViewUIKit` struct in the `PagerKit` framework is a `View` which provides page-based navigation in SwiftUI applications . It manages a collection of `PKPage` views and supports customization through a variety of modifiers applied to `PKPagesView`.

## Initializers

| Name | Parameters | Description |
|------|------------|-------------|
| `init(pages:)` | `pages: [PKPage]` | Initializes with an array of `PKPage` views, setting default options. |
| `init(pages:)` | `@PKPageBuilder pages: () -> [PKPage]` | Initializes with a page builder closure, allowing declarative page creation. |

## Modifiers

| Name | Parameters | Description |
|------|------------|-------------|
| `pkPageControlHidesForSignlePage(_:)` | `condition: Bool` | Hides the page control when there is only one page. |
| `pkPageNavigationOrientation(_:)` | `orientation: Axis` | Sets the navigation orientation (horizontal or vertical). |
| `pkPageOptions(_:)` | `options: [UIPageViewController.OptionsKey : Any]?` | Configures page view controller options. |
| `pkPageControlAlignment(_:)` | `alignment: Alignment = .bottom` | Sets the page control alignment (e.g., top, center, bottom). |
| `pkPageControlAlignment(spacing:alignment:)` | `spacing: CGFloat, alignment: Alignment = .bottom` | Sets alignment and spacing for the page control. |
| `pkPageControlIndicatorTintColor(_:)` | `color: Color? = .secondary` | Sets the tint color for non-current page indicators. |
| `pkPageControlAllowsContinuousInteraction(_:)` | `condition: Bool` | Enables or disables continuous interaction with the page control. |
| `pkPageControlCurrentIndicatorTintColor(_:)` | `color: Color? = .primary` | Sets the tint color for the current page indicator. |
| `pkPageControlHidden(_:)` | `condition: Bool` | Hides or shows the page control. |
| `pkPageControlBackgroundStyle(_:)` | `style: PKPageControlBackgroundStyle = .automatic` | Sets the background style for the page control (e.g., automatic, minimal, prominent). |
| `pkPageControlPreferredIndicatorUIImage(image:)` | `image: UIImage?` | Sets the preferred image for page indicators. |
| `pkPageControlIndicator(_:forPage:)` | `image: UIImage?, forPage: Int` | Sets a specific image for a page’s indicator. |
| `pkPageControlCurrentIndicator(_:forPage:)` | `image: UIImage?, forPage: Int` | Sets a specific image for a page’s current indicator. |
| `pkPageControlPreferredCurrentPageIndicatorImage(image:)` | `image: UIImage?` | Sets the preferred image for the current page indicator (iOS 16.0, tvOS 16.0+). |
| `pkPageControlDirection(_:)` | `direction: PKPageControlDirection` | Sets the layout direction for page control dots (iOS 16.0, tvOS 16.0+). |
| `pkCurrentPageIndex(index:)` | `index: Binding<Int>` | Binds the current page index to a state variable. |
| `pkOnManualPageChange(action:)` | `action: @escaping (_ currentIndex: Int, _ direction: PKPageDirection) -> Void` | Executes a closure when the page changes manually, providing the current index and direction. |
| `pkOnManualPageChange(action:)` | `action: @escaping (_ previousIndex: Int, _ currentIndex: Int) -> Void` | Executes a closure when the page changes manually, providing previous and current indices. |
| `pkOnAutoPageChange(action:)` | `action: @escaping (_ currentIndex: Int, _ direction: PKPageDirection) -> Void` | Executes a closure when the page changes automatically, providing the current index and direction. |
| `pkOnAutoPageChange(action:)` | `action: @escaping (_ previousIndex: Int, _ currentIndex: Int) -> Void` | Executes a closure when the page changes automatically, providing previous and current indices. |
| `pkOnTransitionStart(action:)` | `action: @escaping (_ previousIndex: Int, _ currentIndex: Int) -> Void` | Executes a closure when a page transition starts. |
| `pkOnTransitionEnd(action:)` | `action: @escaping (_ previousIndex: Int, _ currentIndex: Int) -> Void` | Executes a closure when a page transition ends. |

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
        .pkPageControlAlignment(spacing: 5, alignment: .leading)
        .pkPageControlBackgroundStyle(.prominent)
        .pkPageControlDirection(.topToBottom)
        .pkPageControlIndicatorTintColor(.gray)
        .pkPageControlCurrentIndicatorTintColor(.blue)
        .pkPageControlHidesForSignlePage(true)
        .pkPageControlAllowsContinuousInteraction(true)
        .pkPageControlHidden(false)
        .pkPageNavigationOrientation(.horizontal)
        .pkOnManualPageChange { currentIndex, direction in
            print("Manual page change to index \(currentIndex) in direction \(direction)")
        }
        .pkOnAutoPageChange { previousIndex, currentIndex in
            print("Auto page change from \(previousIndex) to \(currentIndex)")
        }
        .pkOnTransitionStart { previousIndex, currentIndex in
            print("Transition started from \(previousIndex) to \(currentIndex)")
        }
        .pkOnTransitionEnd { previousIndex, currentIndex in
            print("Transition ended from \(previousIndex) to \(currentIndex)")
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
- ``PagerKit/PKPagesView/pkPageControlAlignment(_:)``
- ``PagerKit/PKPagesView/pkPageControlAlignment(spacing:alignment:)``
- ``PagerKit/PKPagesView/pkPageControlBackgroundStyle(_:)``
- ``PagerKit/PKPagesView/pkPageControlDirection(_:)``
- ``PagerKit/PKPagesView/pkPageControlHidden(_:)``
- ``PagerKit/PKPagesView/pkPageControlHidesForSignlePage(_:)``
- ``PagerKit/PKPagesView/pkPageControlIndicatorTintColor(_:)``
- ``PagerKit/PKPagesView/pkPageControlCurrentIndicatorTintColor(_:)``
- ``PagerKit/PKPagesView/pkPageControlAllowsContinuousInteraction(_:)``
- ``PagerKit/PKPagesView/pkPageControlPreferredIndicatorImage(image:)``
- ``PagerKit/PKPagesView/pkPageControlIndicator(_:forPage:)``
- ``PagerKit/PKPagesView/pkPageControlCurrentIndicator(_:forPage:)``
- ``PagerKit/PKPagesView/pkPageControlPreferredCurrentPageIndicatorImage(image:)``

### Logic and Triggers
- ``PagerKit/PKPagesView/pkCurrentPageIndex(index:)``
- ``PagerKit/PKPagesView/pkOnManualPageChange(action:)-((Int,PKPageDirection)->Void)``
- ``PagerKit/PKPagesView/pkOnManualPageChange(action:)-((Int,Int)->Void)``
- ``PagerKit/PKPagesView/pkOnAutoPageChange(action:)-((Int,PKPageDirection)->Void)``
- ``PagerKit/PKPagesView/pkOnAutoPageChange(action:)-((Int,Int)->Void)``
- ``PagerKit/PKPagesView/pkOnTransitionStart(action:)``
- ``PagerKit/PKPagesView/pkOnTransitionEnd(action:)``
