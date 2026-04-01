# ``PagerKit/PKPageDirection``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "17.0")
    @Available(iPadOS, introduced: "17.0")
    @Available(macOS, introduced: "14.0")
    @Available(tvOS, introduced: "17.0")
    @Available(visionOS, introduced: "1.0")
    @Available(watchOS, introduced: "10.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

Defines the direction of page transitions.

## Overview

Specifies whether a page transition moves `forward` or `reverse`. Maps to `UIPageViewController.NavigationDirection` on supported platforms.

### Cases
| Case | Description |
|------|-------------|
| ``forward`` | Transition to the next page. |
| ``reverse`` | Transition to the previous page. |

### Private Properties
| Property Name | Type | Description |
|---------------|------|-------------|
| `uiKitValue` | `UIPageViewController.NavigationDirection` | Maps to UIKit navigation direction. |

### Private Static Methods
| Method Name | Return Type | Description |
|-------------|-------------|-------------|
| `caseFor(uiKitValue:)` | `PKPageDirection` | Converts a UIKit navigation direction, defaulting to `forward`. |

## Read Also
- ``PagerKit/PKPage``
- ``PagerKit/PKPageDirection/forward``
- ``PagerKit/PKPageDirection/reverse``
- ``PagerKit/PKPagesView``
