// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "AlloySDK",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "AlloySDK",
            targets: [
                "AlloyTarget"
            ]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AlloyTarget",
            dependencies: [
                .target(name: "AlloySDK")
            ],
            path: "Sources"
        ),
      .binaryTarget(
          name: "AlloySDK",
          url: "https://github.com/alloy-ch/rcplus-alloy-ios-sdk-spm/releases/download/v0.2.0/Alloy-0.2.0.xcframework.zip",
          checksum: "bbe3d88d79b83591489e409a683b82c8ce1bc421f9f2bfbcc0885770233fcb98"
      ),
    ],
    swiftLanguageVersions: [.v5]
)
