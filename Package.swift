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
          url: "https://github.com/alloy-ch/rcplus-alloy-ios-sdk-spm/releases/download/v0.0.3/Alloy-0.0.3.xcframework.zip",
          checksum: "b65b0c3010504f93ae212b677cca2418c60a054889abadc1ba6bfe7e6af2b809"
      ),
    ],
    swiftLanguageVersions: [.v5]
)
