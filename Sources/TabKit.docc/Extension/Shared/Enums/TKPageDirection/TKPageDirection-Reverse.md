# ``TabKit/TKPageDirection/reverse``

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

Represents a reverse page transition.

## Overview

The `reverse` case of the ``TKPageDirection`` enum in the `TabKit` framework indicates a transition to the previous page in a ``TKPagesView``. It is returned when the previous page index is greater than the current page index, used for styling or implementing custom backward navigation transitions.

## Read Also
- ``TabKit/TKPage``
- ``TabKit/TKPageDirection``
- ``TabKit/TKPageDirection/forward``
- ``TabKit/TKPagesView``
