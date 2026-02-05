// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iOS-NapTrackerSDK-SPM",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "iOS-NapTrackerSDK-SPM",
            targets: ["iOS_NapTrackerSDK_SPM"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "NapTrackerSDKBinary",
            url: "https://github.com/Nasmedia-Tech/iOS-NapTrackerSDKDownload/raw/main/NapTrackerSDK0.2.0.xcframework.zip",
            checksum: "c2cf3ba57dfa945142d721de8e1c4ff7b77665bee7cf59b535e448b2386fdc56"
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
