// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Collegiate",
    platforms: [.macOS(.v10_15),
                .iOS(.v13),
                .tvOS(.v13),
                .watchOS(.v6)],
    products: [
        .library(
            name: "Collegiate",
            targets: ["Collegiate"]),
        
        .library(
            name: "CollegeGroup",
            targets: ["CollegeGroup"]),
        
//        .library(
//            name: "StudentNewspaper",
//            targets: ["StudentNewspaper"]),
        
        .library(
            name: "PartialAddress",
            targets: ["PartialAddress"]),
        
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms.git", from: "1.0.0"),
        .package(url: "https://github.com/christopherweems/Resultto.git", from: "0.2.2"),
        .package(url: "https://github.com/gitMcFly/MixedGroup.git", from: "0.0.2"),
        .package(url: "https://github.com/christopherweems/Statehood.git", from: "0.2.2"),
        .package(url: "https://github.com/christopherweems/unstandard.git", branch: "main"),
        
    ],
    targets: [
        .target(
            name: "Collegiate",
            dependencies: [
                "CollegeGroup",
                "MixedGroup",
                .product(name: "Statehood", package: "Statehood"),
                "StudentNewspaper",
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
        
        .target(
            name: "StudentNewspaper",
            dependencies: [
                .product(name: "unstandard", package: "unstandard"),
            ]),
        
        
        /* Tests */
        
        .testTarget(
            name: "CollegiateTests",
            dependencies: ["Collegiate"]),
        
    ]
)
