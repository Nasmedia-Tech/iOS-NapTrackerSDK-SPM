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
            url: "https://github.com/Nasmedia-Tech/iOS-NapTrackerSDKDownload/raw/main/NapTrackerSDK0.4.0.xcframework.zip",
            checksum: "ac52029f8198b852e3b0422aa28f9287d4737b67af5ca1975114bc283f2ef551"
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
