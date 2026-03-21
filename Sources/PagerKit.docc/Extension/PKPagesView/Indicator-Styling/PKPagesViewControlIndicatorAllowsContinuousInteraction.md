# ``PagerKit/PKPagesView/pkPageControlIndicatorAllowsContinuousInteraction(_:)``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "14.0")
    @Available(iPadOS, introduced: "14.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

Enables or disables continuous interaction with the page control.

## Overview

Configures continuous interaction (dragging) for the page control. Set to `true` to allow dragging across dots for rapid navigation; `false` limits interaction to taps. Supported on iOS/iPadOS only.

## Parameters

| Name | Type | Description |
|------|------|-------------|
| `allows` | `Bool` | `true` enables continuous interaction; `false` disables it. Default: `true`. |

## Example Usage

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
        .pkPageControlIndicatorAllowsContinuousInteraction(false)
        .pkPageControlIndicatorAlignment(spacing: 15, alignment: .bottom)
        .pkPageControlIndicatorBackgroundStyle(.prominent)
    }
}
```

## Read Also

### Related Types
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
- ``PagerKit/PKPageControlIndicatorDirection``
