// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterIronSource",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterIronSource",
            targets: ["REVUPMediaMaxAdapterIronSourceTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package.git", exact: "9.4.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterIronSourceTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterIronSource"),
                .target(name: "REVUPMediaMaxAdapterIronSourceMediationAdapter"),
                .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterIronSource",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterIronSource.zip",
            checksum: "742347a867c43500986990bae354f8fbc73d4d710b0e13414e2e6b0c211d5ee6"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "00143662889262fdb4ee269c549c0032b542f2565b25efb44e6843086456477d"
        ),
    ]
)
