// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NapTrackerSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "NapTrackerSDK",
            targets: ["iOS_NapTrackerSDK_SPM"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "NapTrackerSDKBinary",
            url: "https://github.com/Nasmedia-Tech/iOS-NapTrackerSDKDownload/raw/main/NapTrackerSDK0.3.0.xcframework.zip",
            checksum: "fdcfb867a65695b2188b8d147d08a1149d19cf5460a89bd214e6c97886178de1"
        ),
        .target(
            name: "iOS_NapTrackerSDK_SPM",
            dependencies: [
                "NapTrackerSDKBinary"
            ],
            path: "Sources/iOS-NapTrackerSDK-SPM"
        ),

    ]
)
