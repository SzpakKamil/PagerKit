# ``PagerKit``

Native, Customizable Page-Based Navigation.

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

@Options {
    @AutomaticTitleHeading(enabled)
    @AutomaticSeeAlso(disabled)
    @AutomaticArticleSubheading(disabled)
}

## Overview

PagerKit provides a SwiftUI page navigation component for iOS, iPadOS, macOS, tvOS, visionOS, and watchOS. Create intuitive, customizable paging experiences. It leverages `UIPageViewController` on iOS/iPadOS/tvOS/visionOS and a custom SwiftUI implementation on macOS/watchOS. With dynamic page control, navigation orientation, and event handling, PagerKit helps build modern paging interfaces.

@Image(source: "PagerKit-Banner", alt: "Pager app on iPhone and iPad, mac and tv with a sleek page navigation interface.")

Whether adding custom styles, real-time callbacks, or data-driven pages, PagerKit offers a flexible API. Accessibility features like VoiceOver and Dynamic Type support ensure an inclusive experience.

## Getting Started

@Links(visualStyle: detailedGrid) {
    - <doc:AboutPagerKit>
    - <doc:SetUp>
}

## Resources

@Links(visualStyle: detailedGrid) {
    - <doc:Modifiers>
    - <doc:PKPage>
    - <doc:PKPageBuilder>
    - <doc:PKPageControlIndicatorDirection>
    - <doc:PKPageControlIndicatorBackgroundStyle>
    - <doc:PKPageDirection>
}


## Topics

### Essentials
- <doc:AboutPagerKit>
- <doc:SetUp>
- <doc:Modifiers>


### Components
- ``PagerKit/PKPage``
- ``PagerKit/PKPagesView``

### Options
- ``PagerKit/PKPageDirection``
- ``PagerKit/PKPageControlIndicatorBackgroundStyle``
- ``PagerKit/PKPageControlIndicatorDirection``

### Builders
- ``PagerKit/PKPageBuilder``
- ``PagerKit/ForEach``
