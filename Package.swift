// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "scripto",
    platforms: [
    	.macOS(.v10_12)
    ],
    dependencies: [],
    targets: [
        .target(
            name: "scripto",
            dependencies: []),
        .testTarget(
            name: "scriptoTests",
            dependencies: ["scripto"]),
    ]
)
