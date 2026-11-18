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
          url: "https://github.com/alloy-ch/rcplus-alloy-ios-sdk-spm/releases/download/v0.2.1/Alloy-0.2.1.xcframework.zip",
          checksum: "7573cfd20bf5a5dc5afa8a1de6a8363a6ad0034aa1dd159fcabc8b618aea9382"
      ),
    ],
    swiftLanguageVersions: [.v5]
)
