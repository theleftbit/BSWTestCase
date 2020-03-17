// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BSWTestCase",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_15),
        .tvOS(.v11)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "BSWTestCase",
            targets: ["BSWTestCase"]),
    ],
    dependencies: [
        .package(url: "https://github.com/theleftbit/BSWInterfaceKit.git", .branch("develop")),
        .package(url: "https://github.com/theleftbit/BSWFoundation.git", .branch("develop")),
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", .exact("1.7.2")),
    ],
    targets: [
        .target(
            name: "BSWTestCase",
            dependencies: ["SnapshotTesting", "BSWInterfaceKit", "BSWFoundation"]
        ),
    ]
)
