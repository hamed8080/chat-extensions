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
        .package(url: "https://pubgi.sandpod.ir/chat/ios/chat-transceiver", from: "2.1.1"),
        .package(url: "https://pubgi.sandpod.ir/chat/ios/chat-cache", from: "2.1.0"),
        .package(url: "https://pubgi.sandpod.ir/chat/ios/chat-core", from: "2.1.0"),
//        .package(path: "../ChatTransceiver"),
//        .package(path: "../ChatCache"),
//        .package(path: "../ChatCore"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ChatExtensions",
            dependencies: [
                .product(name: "ChatTransceiver", package: "chat-transceiver"),
                .product(name: "ChatCache", package: "chat-cache"),
                .product(name: "ChatCore", package: "chat-core"),
//                .product(name: "ChatTransceiver", package: "ChatTransceiver"),
//                .product(name: "ChatCache", package: "ChatCache"),
//                .product(name: "ChatCore", package: "ChatCore"),
            ]
        ),
        .testTarget(
            name: "ChatExtensionsTests",
            dependencies: [
                "ChatExtensions",
                .product(name: "ChatTransceiver", package: "chat-transceiver"),
                .product(name: "ChatCache", package: "chat-cache"),
                .product(name: "ChatCore", package: "chat-core"),
//                .product(name: "ChatTransceiver", package: "ChatTransceiver"),
//                .product(name: "ChatCache", package: "ChatCache"),
//                .product(name: "ChatCore", package: "ChatCore"),
            ],
            resources: []
        ),
    ]
)
