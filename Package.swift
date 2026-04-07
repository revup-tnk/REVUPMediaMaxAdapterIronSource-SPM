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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterIronSourceTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterIronSource"),
                .target(name: "REVUPMediaMaxAdapterIronSourceMediationAdapter"),
                .target(name: "IronSource"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterIronSource",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterIronSource.zip",
            checksum: "32922526d7eaa2cc8952e44c1cb6b858181d55baee83be22433cc8391ac1aea8"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterIronSourceMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationIronSourceAdapter.xcframework.zip",
            checksum: "0131fd1de69079552e021339b6ee1fd75d9d0cb355b7ca2931dbaae5a5a55ab4"
        ),
        .binaryTarget(
            name: "IronSource",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/IronSource.xcframework.zip",
            checksum: "1040a68bab4fda76f7e345017d9254c9ca2034fc62c2cb352f46a3267f2d532f"
        ),
    ]
)
