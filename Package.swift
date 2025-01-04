// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "RxOmnibar",
    products: [
        .library(
            name: "RxOmnibar",
            targets: ["RxOmnibar"]),
        .library(
            name: "RxOmnibar-Static",
            type: .static,
            targets: ["RxOmnibar"]),
        .library(
            name: "RxOmnibar-Dynamic",
            type: .dynamic,
            targets: ["RxOmnibar"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.6.0"),
        .package(url: "https://github.com/CleanCocoa/Omnibar.git", from: "0.21.0"),
    ],
    targets: [
        .target(
            name: "RxOmnibar",
            dependencies: [
                "Omnibar",
                "RxSwift",
                .product(name: "RxCocoa", package: "RxSwift"),
                .product(name: "RxRelay", package: "RxSwift"),
            ]),
        .testTarget(
            name: "RxOmnibarTests",
            dependencies: [
                "RxOmnibar",
                .product(name: "RxTest", package: "RxSwift"),
            ]),
    ]
)
