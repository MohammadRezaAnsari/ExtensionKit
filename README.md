# ExtensionKit

[![Platforms](https://img.shields.io/badge/platforms-iOS-lightgrey.svg)](https://github.com/MohammadRezaAnsari/ExtensionKit)
[![SPM compatible](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)
[![Swift](https://img.shields.io/badge/Swift-5.3-orange.svg)](https://swift.org)
[![Xcode](https://img.shields.io/badge/Xcode-13.0-blue.svg)](https://developer.apple.com/xcode)
[![MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)


A collection of useful extensions for the Swift Standard Library, Foundation, and UIKit.

## Requirements

- **iOS** 9.0+ 
- **Swift** 5.0+


## Installation

You can use `The Swift Package Manager` to install `SocketKit` by adding the proper description to your

Once you have your Swift package set up, adding `SocketKit` as a dependency is as easy as adding it to the dependencies value of your Package.swift.

```bash
https://github.com/MohammadRezaAnsari/ExtensionKit
```

Alternatively, you can add SocketKit as a dependency in your `Package.swift` file. For example:

```swift
// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "PackageName",
    products: [
        .library(
            name: "PackageName",
            targets: ["YourPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/MohammadRezaAnsari/ExtensionKit", from: "1.6.0"),
    ],
    targets: [
        .target(
            name: "PackageName",
            dependencies: ["ExtensionKit"]),
    ]
)
```

## Contributors
The complete list of people who contributed to this project is available [here](https://github.com/MohammadRezaAnsari/ExtensionKit/graphs/contributors). ExtensionKit wouldn't be what it is without you! Thank you very much! 🙏
