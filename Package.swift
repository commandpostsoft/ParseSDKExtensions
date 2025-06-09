// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ParseSDKExtensions",
    platforms: [
        .iOS(.v15),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "ParseSDKExtensions",
            targets: ["ParseSDKExtensions"]),
    ],
    dependencies: [
        .package(url: "https://github.com/parse-community/Parse-SDK-iOS-OSX.git", from: "5.1.1"),
        .package(url: "https://github.com/modernistik/Modernistik.git", from: "0.7.2"),
        .package(url: "https://github.com/commandpostsoft/TimeZoneLocate.git", from: "0.4.2")
    ],
    targets: [
        .target(
            name: "ParseSDKExtensions",
            dependencies: [
                .product(name: "ParseObjC", package: "Parse-SDK-iOS-OSX"),
                .product(name: "Modernistik", package: "Modernistik"),
                .product(name: "TimeZoneLocate", package: "TimeZoneLocate")
            ],
            path: "ParseSDKExtensions"
        )
    ]
)