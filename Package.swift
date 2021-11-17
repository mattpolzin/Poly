// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Poly",
    platforms: [.macOS(.v10_10),
                .iOS(.v10)],
    products: [
        .library(
            name: "Poly",
            targets: ["Poly"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Poly",
            dependencies: []),
        .testTarget(
            name: "PolyTests",
            dependencies: ["Poly"]),
    ],
    swiftLanguageVersions: [.v4_2, .v5]
)
