// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyAdSDK",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyAdSDK",
            targets: ["MyAdSDKTarget"]
        ),
        .library(
            name: "MyDFPAdapter",
            targets: ["MyDFPAdapterTarget"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", .upToNextMajor(from: "10.0.2")),
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "MyAdSDKTarget",
                dependencies: [
                    .target(name: "MyAdSDK", condition: .when(platforms: [.iOS])),
                ],
                path: "MyAdSDKWrapper"
               ),
        .target(name: "MyDFPAdapterTarget",
                dependencies: [
                    .target(name: "MyDFPAdapter", condition: .when(platforms: [.iOS])),
                    .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
                path: "MyDFPAdapterWrapper",
                linkerSettings: [
                    .linkedFramework("JavaScriptCore"),
                ]
               ),
        //core
        .binaryTarget(name: "MyAdSDK", path: "MyAdSDK.xcframework"),
        //dfp
        .binaryTarget(name: "MyDFPAdapter", path: "MyDFPAdapter.xcframework"),
    ]
)
