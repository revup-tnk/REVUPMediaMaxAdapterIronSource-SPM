// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterIronSource",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterIronSource",
            targets: ["REVUPMediaMaxAdapterIronSourceTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-IronSource.git", exact: "906010000.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterIronSourceTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterIronSource"),
                .product(name: "AppLovinMediationIronSourceAdapter", package: "AppLovin-MAX-Swift-Package-IronSource"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterIronSource",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMaxAdapterIronSource.zip",
            checksum: "e7ae0a87d774418c35dbac8b152dc9f42b79563cf82a51730552113d6b49c065"
        ),
    ]
)
