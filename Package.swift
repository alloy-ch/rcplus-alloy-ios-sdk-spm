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
          url: "https://github.com/alloy-ch/rcplus-alloy-ios-sdk-spm/releases/download/v0.0.1/Alloy-0.0.1.xcframework.zip",
          checksum: "d2652775323de65c48c1f5537575b1d4ac06347243631ce74ccd35d99e613ea2"
      ),
    ],
    swiftLanguageVersions: [.v5]
)
