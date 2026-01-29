// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TabKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14), .tvOS(.v14), .visionOS(.v1), .macOS(.v14)
    ],
    products: [
        .library(name: "TabKit", targets: ["TabKit"])
    ],
    targets: [
        .target(
            name: "TabKit"
        ),

    ]
)
