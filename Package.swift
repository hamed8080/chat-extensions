// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChatExtensions",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v10),
        .macOS(.v12),
        .macCatalyst(.v13),
    ],
    products: [
        .library(
            name: "ChatExtensions",
            targets: ["ChatExtensions"]),
    ],
    dependencies: [
        .package(path: "../ChatTransceiver"),
        .package(path: "../ChatCache"),
        .package(path: "../ChatCore"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ChatExtensions",
            dependencies: [
                "ChatTransceiver",
                "ChatCache",
                "ChatCore",
            ]
        ),
        .testTarget(
            name: "ChatExtensionsTests",
            dependencies: [
                "ChatCache",
                "ChatCore",
            ],
            resources: []
        ),
    ]
)
