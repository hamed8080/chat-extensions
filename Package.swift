// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let useLocalDependency = false

let local: [Package.Dependency] = [
    .package(path: "../ChatTransceiver"),
    .package(path: "../ChatCache"),
    .package(path: "../ChatCore"),
    .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
]

let remote: [Package.Dependency] = [
    .package(url: "https://pubgi.sandpod.ir/chat/ios/chat-transceiver", from: "2.2.0"),
    .package(url: "https://pubgi.sandpod.ir/chat/ios/chat-cache", from: "2.2.0"),
    .package(url: "https://pubgi.sandpod.ir/chat/ios/chat-core", from: "2.2.0"),
    .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
]

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
    dependencies: useLocalDependency ? local : remote,
    targets: [
        .target(
            name: "ChatExtensions",
            dependencies: [
                .product(name: "ChatTransceiver", package: useLocalDependency ? "ChatTransceiver" : "chat-transceiver"),
                .product(name: "ChatCache", package: useLocalDependency ? "ChatCache" : "chat-cache"),
                .product(name: "ChatCore", package: useLocalDependency ? "ChatCore" : "chat-core"),
            ]
        ),
        .testTarget(
            name: "ChatExtensionsTests",
            dependencies: [
                "ChatExtensions",
                .product(name: "ChatTransceiver", package: useLocalDependency ? "ChatTransceiver" : "chat-transceiver"),
                .product(name: "ChatCache", package:  useLocalDependency ? "ChatCache" : "chat-cache"),
                .product(name: "ChatCore", package: useLocalDependency ? "ChatCore" : "chat-core"),
            ],
            resources: []
        ),
    ]
)
