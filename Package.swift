// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SwiftTemplate",
    products: [
        .library(
            name: "SwiftTemplateLib",
            targets: ["SwiftTemplateLib"]),
        .executable(
            name: "swiftcmd",
            targets: ["SwiftTemplateCmd"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftTemplateLib",
            dependencies: []),
        .target(
            name: "SwiftTemplateCmd",
            dependencies: ["SwiftTemplateLib"]),
        .testTarget(
            name: "SwiftTemplateTests",
            dependencies: ["SwiftTemplateLib"]),
    ]
)
