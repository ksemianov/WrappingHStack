// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "WrappingHStack",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
        .tvOS(.v16),
        .watchOS(.v9),
    ],
    products: [
        .library(
            name: "WrappingHStack",
            targets: ["WrappingHStack"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WrappingHStack",
            dependencies: []
        ),
    ]
)
