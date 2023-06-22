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
        .package(path: "../ChatDTO"),
        .package(path: "../ChatCore"),
        .package(path: "../ChatCache"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ChatExtensions",
            dependencies: [
                "ChatTransceiver",
                "ChatDTO",
                "ChatCore",
                "ChatCache",
            ]
        ),
        .testTarget(
            name: "ChatExtensionsTests",
            dependencies: [
                "ChatDTO",
                "ChatCore",
                "ChatCache",
            ],
            resources: []
        ),
    ]
)
