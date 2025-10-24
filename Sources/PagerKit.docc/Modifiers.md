# Modifiers

@Metadata {
    @SupportedLanguage(swift)
    @TitleHeading("Structure")
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(macOS, introduced: "14.0")
    @Available(tvOS, introduced: "14.0")
    @Available(visionOS, introduced: "1.0")
    @Available(watchOS, introduced: "10.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @PageColor(green)
    @PageImage(purpose: card, source: "PagerKitModifiers")
}

@Options {
    @AutomaticSeeAlso(disabled)
}

Learn about the modifiers available for customizing the `PagerKit` package in SwiftUI.

## Overview

The `PagerKit` package provides a variety of modifiers to customize the appearance, behavior, and interaction of `PKPagesView` within SwiftUI applications. These modifiers are applied using SwiftUI’s dot syntax (e.g., `.pkPageControlDirection(_:)`), supporting accessibility features like VoiceOver and Dynamic Type. Below, modifiers are grouped by category, with platform-specific availability noted.

> Important: Some modifiers are exclusive to iOS, iPadOS, tvOS, and visionOS due to `UIPageViewController` dependencies, while others are available on macOS and watchOS with SwiftUI-based implementations. Check each modifier’s availability for compatibility.

## Modifiers

### Pager Styling Modifiers
- ``PagerKit/PKPagesView/pkPageNavigationOrientation(_:)``: Sets the navigation orientation for page transitions (`.horizontal` or `.vertical`). Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkPageOptions(_:)``: Configures `UIPageViewController` options (e.g., inter-page spacing, transition style) with a dictionary of `UIPageViewController.OptionsKey`. Available on iOS, iPadOS, tvOS, and visionOS.

### Control Styling Modifiers
- ``PagerKit/PKPagesView/pkPageControlAlignment(_:)``: Sets the alignment of the page control (e.g., `.topLeading`, `.bottom`, `.center`). Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkPageControlAlignment(spacing:alignment:)``: Configures alignment with custom spacing from the screen edge (e.g., 10–15 points). Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkPageControlBackgroundStyle(_:)``: Applies a background style (`.automatic`, `.minimal`, `.prominent`). Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkPageControlDirection(_:)``: Sets the layout direction of page control dots (`.natural`, `.leftToRight`, `.rightToLeft`, `.topToBottom`, `.bottomToTop`). Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkPageControlHidesForSignlePage(_:)``: Hides the page control when there is only one page. Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkPageControlCurrentIndicatorTintColor(_:)``: Sets the tint color for the current page indicator using `UIColor` (iOS, iPadOS, visionOS) or `NSColor` (macOS, watchOS). Available on iOS, iPadOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkPageControlIndicatorTintColor(_:)``: Sets the tint color for non-current page indicators using `UIColor` (iOS, iPadOS, visionOS) or `NSColor` (macOS, watchOS). Available on iOS, iPadOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkPageControlPreferredIndicatorImage(image:)``: Sets a custom image for non-current page indicators using `UIImage` (iOS, iPadOS, visionOS) or `NSImage` (macOS, watchOS). Available on iOS, iPadOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkPageControlPreferredCurrentPageIndicatorImage(image:)``: Sets a custom image for the current page indicator using `UIImage` (iOS, iPadOS, visionOS) or `NSImage` (macOS, watchOS). Available on iOS, iPadOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkPageControlCurrentIndicator(_:forPage:)``: Sets a custom image for the current page indicator at a specific page index using `UIImage` (iOS, iPadOS, visionOS) or `NSImage` (macOS, watchOS). Available on iOS, iPadOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkPageControlAllowsContinuousInteraction(_:)``: Enables or disables dragging across page control dots for rapid page changes. Available on iOS and iPadOS.

### Logic and Trigger Modifiers
- ``PagerKit/PKPagesView/pkCurrentPageIndex(index:)``: Binds the current page index to a `Binding<Int>` for two-way synchronization. Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkOnManualPageChange(action:)-((Int,Int)->Void)``: Executes a closure with previous and current page indices on manual page changes (e.g., swipe or tap). Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkOnManualPageChange(action:)-((Int,PKPageDirection)->Void)``: Executes a closure with the current page index and ``PKPageDirection`` on manual page changes. Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkOnAutoPageChange(action:)-((Int,Int)->Void)``: Executes a closure with previous and current page indices on automatic page changes (e.g., via timer). Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkOnAutoPageChange(action:)-((Int,PKPageDirection)->Void)``: Executes a closure with the current page index and ``PKPageDirection`` on automatic page changes. Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkOnTransitionStart(action:)``: Executes a closure when a page transition begins, providing relevant indices or direction. Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.
- ``PagerKit/PKPagesView/pkOnTransitionEnd(action:)``: Executes a closure when a page transition completes, providing relevant indices or direction. Available on iOS, iPadOS, tvOS, visionOS, macOS, and watchOS.

## Example

Here’s an example combining multiple modifiers across platforms:

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
        .pkPageControlAlignment(spacing: 15, alignment: .topLeading)
        .pkPageControlBackgroundStyle(.prominent)
        .pkPageControlDirection(.leftToRight)
        .pkPageControlCurrentIndicatorTintColor(.blue)
        .pkPageControlIndicatorTintColor(.gray)
        .pkPageNavigationOrientation(.vertical)
        .pkCurrentPageIndex($currentPage)
        .pkOnManualPageChange { index, direction in
            print("Page changed to \(index) in \(direction) direction")
        }
        #if os(iOS) || os(iPadOS)
        .pkPageControlAllowsContinuousInteraction(true)
        .pkPageOptions([.interPageSpacing: 20, .transitionStyle: .scroll])
        #endif
        .pkPageControlPreferredCurrentPageIndicatorImage(UIImage(systemName: "star.fill"))
    }
}
```

## Next Steps

- Dive into detailed modifier documentation via the links above.
- Explore the `PagerKit` setup guide in <doc:SetUp>.
