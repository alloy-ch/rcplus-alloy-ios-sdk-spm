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
          url: "https://github.com/alloy-ch/rcplus-alloy-ios-sdk-spm/releases/download/v0.0.4/Alloy-0.0.4.xcframework.zip",
          checksum: "165b361bb6e400ff4703352addc5da9e96db39b9beeae1f983f896dc23d4528d"
      ),
    ],
    swiftLanguageVersions: [.v5]
)
