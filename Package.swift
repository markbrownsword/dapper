// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dapper",
    dependencies: [
    ],
    targets: [
        .target(
            name: "Dapper",
            dependencies: ["DapperCore"]),
        .target(
            name: "DapperCore",
            dependencies: [], 
            resources: [
                .process("Templates")
            ]),
        .testTarget(
            name: "DapperTests",
            dependencies: ["Dapper"]),
        .testTarget(
            name: "DapperCoreTests",
            dependencies: ["DapperCore"]),
    ]
)
