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
            url: "https://github.com/Nasmedia-Tech/iOS-NapTrackerSDKDownload/raw/main/NapTrackerSDK1.0.0.xcframework.zip",
            checksum: "f78bcc96494cf54fb8d46804e934d5f4e5079dcb9a940bc573bdbc3eac8130be"
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
