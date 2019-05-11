// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "scripto",
    platforms: [
    	.macOS(.v10_12)
    ],
    dependencies: [
	    .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0-beta.5")
    ],
    targets: [
        .target(
            name: "scripto",
            dependencies: ["Alamofire"]),
        .testTarget(
            name: "scriptoTests",
            dependencies: ["scripto"]),
    ]
)
