// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MobileBankingResources",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AlamofireObjectMapper",
            targets: [
                "AlamofireObjectMapper"
            ]
        ),
        .library(
            name: "CCTextFieldEffects",
            targets: [
                "CCTextFieldEffects"
            ]
        ),
        .library(
            name: "ObjectMapper+Realm",
            targets: [
                "ObjectMapper+Realm"
            ]
        ),
        .library(
            name: "TTTAttributedLabel",
            targets: [
                "TTTAttributedLabel"
            ]
        ),
        .library(
            name: "MaterialComponents",
            targets: [
                "MaterialComponents"
            ]
        ),
        .library(
            name: "PinCodeTextField",
            targets: [
                "PinCodeTextField"
            ]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/Alamofire/Alamofire.git",
            exact: "5.0.0-rc.3"
        ),
        .package(
            url: "https://github.com/realm/realm-swift.git",
            exact: "10.42.0"
        ),
        .package(
            url: "https://github.com/tristanhimmelman/ObjectMapper.git",
            exact: "4.2.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AlamofireObjectMapper",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "ObjectMapper", package: "ObjectMapper")
            ],
            path: "Sources/AlamofireObjectMapper"
        ),
        .target(
            name: "CCTextFieldEffects",
            dependencies: [
            ],
            path: "Sources/CCTextFieldEffects"
        ),
        .target(
            name: "ObjectMapper+Realm",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-swift"),
                .product(name: "ObjectMapper", package: "ObjectMapper")
            ],
            path: "Sources/ObjectMapper+Realm"
        ),
        .target(
            name: "TTTAttributedLabel",
            dependencies: [
            ],
            path: "Sources/TTTAttributedLabel"
        ),
        .target(
            name: "MaterialComponents",
            dependencies: [
            ],
            path: "Sources/MaterialComponents"
        ),
        .target(
            name: "PinCodeTextField",
            dependencies: [
            ],
            path: "Sources/PinCodeTextField"
        )
    ]
)
