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
          url: "https://github.com/alloy-ch/rcplus-alloy-ios-sdk-spm/releases/download/v0.1.2/Alloy-0.1.2.xcframework.zip",
          checksum: "a5a35a01e8695d58cd4d272158b760ff8617be75d3fade1b61629cddadc85d03"
      ),
    ],
    swiftLanguageVersions: [.v5]
)
