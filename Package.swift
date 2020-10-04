// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Base",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Base",
            targets: ["Base"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "Reachability", url: "https://github.com/ashleymills/Reachability.swift", .exact("4.3.1")),
        .package(name: "Log", url: "https://github.com/swwol/Log-spm/", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Base",
            dependencies: ["Reachability", "Log"]),
    ]
)
