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
        .library(name: "PagerKit", targets: ["PagerKit"]),
        .library(name: "PagerKitHarness", targets: ["PagerKitHarness"])
    ],
    dependencies: [
        .package(url: "https://github.com/SzpakKamil/HarnessKit.git", branch: "1.0")
    ],
    targets: [
        .target(
            name: "PagerKit"
        ),
        .target(
            name: "PagerKitHarness",
            dependencies: [
                .product(name: "HarnessKit", package: "HarnessKit"),
                "PagerKit"
            ]
        ),
        .testTarget(
            name: "PagerKitTests",
            dependencies: ["PagerKit"]
        ),
    ]
)
