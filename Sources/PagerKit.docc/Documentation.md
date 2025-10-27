# ``PagerKit``

Native, Highly Customizable Page-Based Navigation Component

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

The `PagerKit` package offers a SwiftUI-based page navigation component for iOS, iPadOS, macOS, tvOS, visionOS, and watchOS, enabling developers to create intuitive, customizable paging experiences. It leverages `UIPageViewController` for native integration on iOS, iPadOS, tvOS, and visionOS, while on macOS and watchOS, it uses a SwiftUI-reimplemented equivalent for enhanced flexibility and consistency. With support for dynamic page control, navigation orientation, and event handling, `PagerKit` empowers you to build modern, user-friendly paging interfaces that adapt to your app’s unique needs.

@Image(source: "PagerKit-Banner.png", alt: "Pager app on iPhone and iPad, mac and tv with a sleek page navigation interface.")

Whether you’re adding custom page control styles, real-time navigation callbacks, or data-driven page generation, `PagerKit` provides a flexible API to enhance your app’s navigation functionality. Its accessibility features, like VoiceOver and Dynamic Type support, ensure an inclusive experience, while its extensive documentation makes integration straightforward. Explore the resources below to start building with `PagerKit` and see how it can transform user interactions in your app.

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
    - <doc:PKPageControlDirection>
    - <doc:PKPageControlBackgroundStyle>
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
- ``PagerKit/PKPageControlBackgroundStyle``
- ``PagerKit/PKPageControlDirection``

### Builders
- ``PagerKit/PKPageBuilder``
- ``PagerKit/ForEach``
