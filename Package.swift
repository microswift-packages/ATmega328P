// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ATmega328P",
    products: [
        .library(
            name: "ATmega328P",
            targets: ["ATmega328P"]),
    ],
    dependencies: [.package(url: "https://github.com/microswift-packages/hal-baseline", from: "1.0.0")],
    targets: [
        .target(
            name: "ATmega328P",
            dependencies: [],
            path: ".",
            sources: ["main.swift"]),
    ]
)
