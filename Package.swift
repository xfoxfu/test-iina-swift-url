// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "URLLib",
    products: [
        .library(name: "URLLib",
                 type: .static,
                 targets: ["URLLib"]
        )
    ],
    dependencies: [],
    targets: [
        .target(name: "URLLib",
                dependencies: [],
                resources: []
        ),
        .testTarget(name: "URLLibTests",
                    dependencies: ["URLLib"]
        )
    ]
)
