// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ATmega328P",
    products: [
        .library(
            name: "ATmega328P",
            targets: ["ATmega328P"]),
    ],
    dependencies: [.package(path: "/Users/carl/Documents/Code/HALGEN/build/ATmega328P//../HAL")],
    targets: [
        .target(
            name: "ATmega328P",
            dependencies: [],
            path: ".",
            sources: ["main.swift"]),
    ]
)
