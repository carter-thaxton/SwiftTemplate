// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Basic",
    products: [
        .library(
            name: "BasicLib",
            targets: ["BasicLib"]),
        .executable(
            name: "basic",
            targets: ["BasicApp"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "BasicLib",
            dependencies: []),
        .target(
            name: "BasicApp",
            dependencies: ["BasicLib"]),
        .testTarget(
            name: "BasicTests",
            dependencies: ["BasicLib"],
            path: "Tests"),
    ]
)
