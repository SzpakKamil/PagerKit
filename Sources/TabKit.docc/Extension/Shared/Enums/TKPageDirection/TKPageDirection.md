# ``TabKit/TKPageDirection``

@Metadata {
    @SupportedLanguage(swift)
    @Available(iOS, introduced: "17.0")
    @Available(iPadOS, introduced: "17.0")
    @Available(macOS, introduced: "14.0")
    @Available(tvOS, introduced: "17.0")
    @Available(visionOS, introduced: "1.0")
    @Available(swift, introduced: "5.9")
    @Available(Xcode, introduced: "15.0")
    @DocumentationExtension(mergeBehavior: override)
}
@Options {
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

Defines the direction of page transitions in a tab-based navigation structure.

## Overview

The `TKPageDirection` enum in the `TabKit` framework specifies the direction of page transitions within a ``TKPagesView``, indicating whether a page transition moves forward to the next page or backward to the previous page. This enum is used when styling or implementing custom transitions in other views, allowing developers to respond to whether a page transition went forward or backward. When UIKit is available `TKPageDirection` maps to `UIPageViewController.NavigationDirection` via the `uiKitValue` property, facilitating integration with UIKit-based page navigation. The `caseFor(uiKitValue:)` static method converts UIKit's navigation direction to `TKPageDirection`, defaulting to `forward` for unknown cases.

### Cases
| Case | Description |
|------|-------------|
| ``forward`` | Represents a transition to the next page in the sequence. |
| ``reverse`` | Represents a transition to the previous page in the sequence. |

### Private Properties
| Property Name | Type | Description |
|---------------|------|-------------|
| `uiKitValue` | `UIPageViewController.NavigationDirection` | Maps the `TKPageDirection` case to a UIKit navigation direction (available when UIKit is imported, not on macOS). |

### Private Static Methods
| Method Name | Return Type | Description |
|-------------|-------------|-------------|
| `caseFor(uiKitValue:)` | `TKPageDirection` | Converts a `UIPageViewController.NavigationDirection` to a `TKPageDirection`, defaulting to `forward` for unknown values (available when UIKit is imported, not on macOS). |

## Read Also
- ``TabKit/TKPage``
- ``TabKit/TKPageDirection/forward``
- ``TabKit/TKPageDirection/reverse``
- ``TabKit/TKPagesView``
