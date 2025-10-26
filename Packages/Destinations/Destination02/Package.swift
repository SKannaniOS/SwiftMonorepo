// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Destination02",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "Destination02",
            targets: ["Destination02"]
        ),
    ],
    dependencies: [
        // 🚨 Development ONLY: Local path dependency on CoreSDK
        // Must be replaced with: .package(url: "...", from: "1.0.0") for production/publishing
//        .package(path: "../../MonoRepoCore")
        .package(url: "https://github.com/SKannaniOS/MonoRepoCore.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "Destination02",
                dependencies: [
                    // Links the CoreSDK product
                    "MonoRepoCore"
                ]),
        .testTarget(
            name: "Destination02Tests",
            dependencies: ["Destination02"]
        )
    ]
)
