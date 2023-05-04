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
        .package(url: "https://pubgi.fanapsoft.ir/chat/ios/chat-dto.git", .upToNextMinor(from: "1.0.0")),
           .package(url: "https://pubgi.fanapsoft.ir/chat/ios/chat-core.git", exact: "1.0.1"),
           .package(url: "https://pubgi.fanapsoft.ir/chat/ios/chat-cache.git", .upToNextMinor(from: "1.0.0")),
           .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ChatExtensions",
            dependencies: [
                .product(name: "ChatDTO", package: "chat-dto"),
                .product(name: "ChatCore", package: "chat-core"),
                .product(name: "ChatCache", package: "chat-cache"),
            ]
        ),
        .testTarget(
            name: "ChatExtensionsTests",
            dependencies: [
                .product(name: "ChatDTO", package: "chat-dto"),
                .product(name: "ChatCore", package: "chat-core"),
                .product(name: "ChatCache", package: "chat-cache"),
            ],
            resources: []
        ),
    ]
)
