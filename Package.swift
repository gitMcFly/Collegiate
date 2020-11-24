// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Collegiate",
    platforms: [.macOS(.v10_15),
                .iOS(.v13),
                .tvOS(.v13),
                .watchOS(.v6)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Collegiate",
            targets: ["Collegiate"]),
        .library(
            name: "CollegeGroup",
            targets: ["CollegeGroup"]),
        .library(
            name: "PartialAddress",
            targets: ["PartialAddress"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-algorithms", .upToNextMajor(from: "0.0.1")),
        .package(url: "https://github.com/christopherweems/Resultto", .upToNextMajor(from: "0.0.1")),
        .package(url: "https://github.com/christopherweems/MixedGroup", .branch("main")),
        .package(url: "https://github.com/christopherweems/Statehood", .branch("main")),
        .package(url: "https://github.com/christopherweems/unstandard", .branch("main")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Collegiate",
            dependencies: [
                "CollegeGroup",
                "MixedGroup",
                .product(name: "Statehood", package: "Statehood"),
            ]),
        .target(
            name: "CollegeGroup",
            dependencies: [
                "PartialAddress",
                .product(name: "Algorithms", package: "swift-algorithms"),
                .product(name: "MixedGroup", package: "MixedGroup"),
                .product(name: "Statehood", package: "Statehood"),
                .product(name: "unstandard", package: "unstandard"),
            ]),
        .target(
            name: "PartialAddress",
            dependencies: [
                .product(name: "Algorithms", package: "swift-algorithms"),
                .product(name: "Resultto", package: "Resultto"),
                .product(name: "Statehood", package: "Statehood"),
                .product(name: "unstandard", package: "unstandard"),
            ]),
        .testTarget(
            name: "CollegiateTests",
            dependencies: ["Collegiate"]),
    ]
)
