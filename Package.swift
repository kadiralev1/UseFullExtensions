// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UsefullExtensions",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UsefullExtensions",
            targets: ["UsefullExtensions"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.0.0"),
        .package(url: "https://github.com/JakubMazur/AppSwizzle.git", from: "1.3.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UsefullExtensions",
            dependencies: ["RxSwift", .product(name: "RxSwift", package: "RxSwift")]),
        .testTarget(
            name: "UsefullExtensionsTests",
            dependencies: ["UsefullExtensions"]),
    ]
)
