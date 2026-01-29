// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PagerKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14), .tvOS(.v14), .visionOS(.v1), .macOS(.v14), .watchOS(.v10)
    ],
    products: [
        .library(name: "PagerKit", targets: ["PagerKit"])
    ],
    targets: [
        .target(
            name: "PagerKit"
        ),

    ]
)
