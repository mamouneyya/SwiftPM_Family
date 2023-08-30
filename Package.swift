// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "Family",
    products: [
        .library(name: "Family", targets: ["Family"]),
    ],
    dependencies: [
        .package(url: "git@github.com:mamouneyya/SwiftPM_Daddy.git", from: "0.0.0"),
        .package(url: "git@github.com:mamouneyya/SwiftPM_Mommy.git", from: "0.0.0"),
    ],
    targets: [
        .target(name: "Family", dependencies: [
            .product(name: "Daddy", package: "SwiftPM_Daddy"),
            .product(name: "Mommy", package: "SwiftPM_Mommy"),
        ]),
        .testTarget(name: "FamilyTests", dependencies: ["Family"]),
    ]
)
