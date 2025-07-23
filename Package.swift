// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Alloy",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "Alloy",
            targets: [
                "Alloy"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/snowplow/snowplow-ios-tracker", exact: "6.2.1")
    ],
    targets: [
        .target(
            name: "Alloy",
            dependencies: [
                .product(name: "SnowplowTracker", package: "snowplow-ios-tracker"),
                .target(name: "AlloyXCFramework")
            ],
            path: "Sources"
        ),
      .binaryTarget(
          name: "AlloyXCFramework",
          url: "https://github.com/alloy-ch/rcplus-alloy-ios-sdk-spm/releases/download/v0.0.2/Alloy-0.0.2.xcframework.zip",
          checksum: "6c094122591c8aa12259bc3d5362d01ef7c59c7818c42d97e573c27ba3eaba15"
      ),
    ],
    swiftLanguageVersions: [.v5]
)
