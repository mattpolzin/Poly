// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Poly",
    platforms: [.macOS(.v10_15),
                .iOS(.v13)],
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
    swiftLanguageModes: [.v5, .v6]
)
