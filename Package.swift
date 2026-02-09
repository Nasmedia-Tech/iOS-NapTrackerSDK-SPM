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
            url: "https://github.com/Nasmedia-Tech/iOS-NapTrackerSDKDownload/raw/main/NapTrackerSDK0.5.0.xcframework.zip",
            checksum: "03362dedd5e3886969aaa5495840aae6f2e58add9193702e2ae4242a5f759218"
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
