// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftInterview",
    platforms: [
        .macOS(.v13), .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftInterview",
            targets: ["SwiftInterview"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.65.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftInterview"),
        .testTarget(
            name: "SwiftInterviewTests",
            dependencies: ["SwiftInterview"]),
        .executableTarget(name: "WebService",
                          dependencies: [
                            .product(name: "Vapor", package: "vapor"),
                            .product(name: "NIOCore", package: "swift-nio"),
                            .product(name: "NIOPosix", package: "swift-nio"),
                          ])
        
    ]
)

var swiftSettings: [SwiftSetting] { [
    .enableUpcomingFeature("DisableOutwardActorInference"),
    .enableExperimentalFeature("StrictConcurrency")
]}
