// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "OneTimePassword",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "OneTimePassword",
            targets: ["OneTimePassword"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mattrubin/Base32.git", from: "1.2.0"),
    ],
    targets: [
        .target(
            name: "OneTimePassword",
            dependencies: ["Base32"],
            path: "Sources"),
        .testTarget(
            name: "OneTimePasswordTests",
            dependencies: ["OneTimePassword"],
            path: "Tests",
            exclude: ["App", "KeychainTests.swift"]),
    ]
)
