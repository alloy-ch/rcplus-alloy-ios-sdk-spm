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
    dependencies: [
        .package(url: "https://github.com/snowplow/snowplow-ios-tracker", exact: "6.2.1")
    ],
    targets: [
        .target(
            name: "AlloyTarget",
            dependencies: [
                .product(name: "SnowplowTracker", package: "snowplow-ios-tracker"),
                .target(name: "AlloySDK")
            ],
            path: "Sources"
        ),
      .binaryTarget(
          name: "AlloySDK",
          url: "https://github.com/alloy-ch/rcplus-alloy-ios-sdk-spm/releases/download/v0.1.0/Alloy-0.1.0.xcframework.zip",
          checksum: "d7249d55fec25af6037f1cfeac86100704843219cec3d6a498b578a2b0f58aa8"
      ),
    ],
    swiftLanguageVersions: [.v5]
)
