// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "Family",
    products: [
        .library(name: "Family", targets: ["Family"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Family", dependencies: []),
        .testTarget(name: "FamilyTests", dependencies: ["Family"]),
    ]
)
