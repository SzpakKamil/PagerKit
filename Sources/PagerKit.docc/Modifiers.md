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
}

@Options {
    @AutomaticSeeAlso(disabled)
}

Customize PagerKit appearance and behavior.

## Overview

PagerKit provides modifiers to control the appearance, layout, behavior, and interaction of `PKPagesView` and `PKPage`.

Modifiers use SwiftUI-style chaining (`.pk…(…)`) and support platform differences:
- **UIKit-based platforms** (iOS, iPadOS, tvOS, visionOS): Rely on `UIPageViewController` + `UIPageControl`.
- **SwiftUI-native platforms** (macOS, watchOS): Use `TabView` style + custom indicator.

> Important: Some modifiers have different parameter types or availability depending on the platform.

## Modifiers

### Pager Styling & Layout

- ``PagerKit/PKPagesView/pkPageNavigationOrientation(_:)``  
  Set scrolling direction: `.horizontal` or `.vertical`.  
  **Available:** All platforms.

### Page Control – Global Visibility & Behavior

- ``PagerKit/PKPagesView/pkPageControlIndicatorHidden(_:)``  
  Hide the page control indicator.  
  **Available:** All platforms.

- ``PagerKit/PKPagesView/pkPageControlIndicatorHidesForSignlePage(_:)``  
  Hide the indicator when there is only one page.  
  **Available:** All platforms.

- ``PagerKit/PKPagesView/pkPageControlIndicatorAllowsContinuousInteraction(_:)``  
  Enable dragging across dots for fast page jumping.  
  **Available:** iOS, iPadOS (UIKit page control).

### Page Control – Position & Spacing

- ``PagerKit/PKPagesView/pkPageControlIndicatorAlignment(_:)``  
  Set indicator position (`.top`, `.bottom`, `.leading`, `.trailing`, `.center`, ...).  
  **Available:** All platforms.

- ``PagerKit/PKPagesView/pkPageControlIndicatorAlignment(spacing:alignment:)``  
  Set indicator position with custom spacing.  
  **Available:** All platforms.

- ``PagerKit/PKPagesView/pkPageControlFooterAlignment(_:)``  
  Position footer content (custom view or default indicator).  
  **Available:** All platforms.

- ``PagerKit/PKPagesView/pkPageControlFooterAlignment(spacing:alignment:)``  
  Set footer position with custom spacing.  
  **Available:** All platforms.

- ``PagerKit/PKPagesView/pkPageControlPadding(_:_:)``  
  Add padding around the page control / footer area.  
  **Available:** All platforms.

### Page Control – Colors & Style

- ``PagerKit/PKPagesView/pkPageControlIndicatorTintColor(_:)``  
  Tint for inactive dots (`Color?`).  
  **Available:** All platforms.

- ``PagerKit/PKPagesView/pkPageControlIndicatorCurrentIndicatorTintColor(_:)``  
  Tint for active dot (`Color?`).  
  **Available:** All platforms.

- ``PagerKit/PKPagesView/pkPageControlIndicatorBackgroundStyle(_:)``  
  Background appearance (`.automatic`, `.minimal`, `.prominent`).  
  **Available:** All platforms.

- ``PagerKit/PKPagesView/pkPageControlIndicatorDirection(_:)``  
  Layout direction of dots (`.natural`, `.leftToRight`, ...).  
  **Available:** iOS 16.0+, tvOS 16.0+ (UIKit); All platforms.

### Page Control – Custom Images

**UIKit platforms (iOS, iPadOS, tvOS, visionOS):**

- ``PagerKit/PKPagesView/pkPageControlIndicatorPreferredIndicatorImage(image:)`` → `UIImage?`
- ``PagerKit/PKPagesView/pkPageControlIndicatorPreferredCurrentPageIndicatorImage(image:)`` → `UIImage?` (iOS 16+)
- ``PagerKit/PKPagesView/pkPageControlIndicator(_:forPage:)`` → Custom inactive dot per page.
- ``PagerKit/PKPagesView/pkPageControlIndicatorCurrentIndicator(_:forPage:)`` → Custom active dot per page.

**SwiftUI platforms (macOS, watchOS):**

- ``PagerKit/PKPagesView/pkPageControlIndicatorPreferredIndicatorImage(image:)`` → `Image?`
- ``PagerKit/PKPagesView/pkPageControlIndicator(_:forPage:)`` → `Image?`
- ``PagerKit/PKPagesView/pkPageControlIndicatorCurrentIndicator(_:forPage:)`` → `Image?`

> Note: Preferred current page image requires iOS 16+/tvOS 16+ on UIKit platforms.

### Page-Level Indicators (per `PKPage`)

- ``PagerKit/PKPage/pkPageIndicatorImage(image:)``  
  Default (inactive) indicator image for this page.  
  **Type:** `UIImage?` (UIKit) / `Image` (SwiftUI).

- ``PagerKit/PKPage/pkPageCurrentIndicatorImage(image:)``  
  Active/current indicator image for this page.  
  **Type:** `UIImage?` (UIKit) / `Image` (SwiftUI).

### Page-Level Auto-advance & Progress (iOS 17.0+, tvOS 17.0+)

- ``PagerKit/PKPage/pkPageDuration(_:)``  
  Set automatic advance duration (seconds). Resets to initial page after end.  
  **Available:** iOS 17+, tvOS 17+.

- ``PagerKit/PKPage/pkPageProgress(_:)-(()->UIPageControlProgress)`` → `UIPageControlProgress` or `@escaping () -> UIPageControlProgress`  
  Custom progress provider (e.g., timer, animated value).

- ``PagerKit/PKPage/pkPageProgress(_:)-(()->Double?)`` → `@escaping () -> Double?`  
  Convenience overload: progress as fraction (0…1). Internally uses timer progress.

### Binding & Events

- ``PagerKit/PKPagesView/pkCurrentPageIndex(index:)``  
  Two-way binding to current page index (`Binding<Int>`).  
  **Available:** All platforms.

- ``PagerKit/PKPagesView/pkOnManualPageChange(action:)-((Int,PKPageDirection)->Void)``  
  Execute on user-initiated page changes (swipe, tap, drag).  
  Variants: `(Int, PKPageDirection)` or `(Int, Int)` (previous, current).

- ``PagerKit/PKPagesView/pkOnAutoPageChange(action:)-((Int,PKPageDirection)->Void)``  
  Execute on timer / automatic page changes.  
  Same variants as above.

- ``PagerKit/PKPagesView/pkOnTransitionStart(action:)``  
  Execute when transition begins.

- ``PagerKit/PKPagesView/pkOnTransitionEnd(action:)``  
  Execute when transition completes.

### Page-Level Custom Content

- ``PagerKit/PKPage/pkPageFooter(_:)``  
  Add custom SwiftUI footer content below (or instead of) the default page control.  
  **Available:** All platforms.

## Example (Cross-Platform)

```swift
import SwiftUI
import PagerKit

struct ContentView: View {
    @State private var currentPage = 0
    
    var body: some View {
        PKPagesView {
            ForEach(0..<4, id: \.self) { i in
                PKPage {
                    Color.blue.opacity(0.2)
                        .overlay(Text("Page \(i+1)").font(.largeTitle))
                }
                .pkPageDuration(i == 1 ? 6.0 : nil)           // longer on page 2
                .pkPageIndicatorImage(Image(systemName: "circle"))
                .pkPageCurrentIndicatorImage(Image(systemName: "circle.fill"))
                .pkPageFooter {
                    if i == 2 {
                        Text("Custom footer").font(.caption)
                    }
                }
            }
        }
        .pkCurrentPageIndex(index: $currentPage)
        .pkPageNavigationOrientation(.vertical)
        .pkPageControlIndicatorAlignment(spacing: 12, alignment: .bottom)
        .pkPageControlFooterAlignment(spacing: 8, alignment: .bottomTrailing)
        .pkPageControlPadding(.bottom, 20)
        .pkPageControlIndicatorBackgroundStyle(.prominent)
        .pkPageControlIndicatorCurrentIndicatorTintColor(.red)
        .pkPageControlIndicatorTintColor(.gray.opacity(0.6))
        .pkPageControlIndicatorHidesForSinglePage(true)
        .pkOnManualPageChange { prev, curr in
            print("Manual → \(prev) → \(curr)")
        }
        #if os(iOS) || os(iPadOS) || os(tvOS) || os(visionOS)
        .pkPageOptions([.interPageSpacing: 8])
        .pkPageControlIndicatorAllowsContinuousInteraction(true)
        #endif
    }
}
