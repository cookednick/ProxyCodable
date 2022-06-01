// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProxyCodable",
    products: [
        .library(
            name: "ProxyCodable",
            targets: ["ProxyCodable"])
    ],
    targets: [
        .target(
            name: "ProxyCodable")
    ]
)
