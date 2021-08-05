# ExtensionKit

[![Platforms](https://img.shields.io/badge/platforms-iOS-lightgrey.svg)](https://github.com/MohammadRezaAnsari/ExtensionKit)
[![SPM compatible](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)
[![Swift](https://img.shields.io/badge/Swift-5.3-orange.svg)](https://swift.org)
[![Xcode](https://img.shields.io/badge/Xcode-12.4-blue.svg)](https://developer.apple.com/xcode)
[![MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)


A collection of useful extensions for the Swift Standard Library, Foundation, and UIKit.

## Requirements

- **iOS** 9.0+ 
- Swift 5.0+


## Installation

<details>
<summary>Swift Package Manager</summary>
</br>
<p>You can use <a href="https://swift.org/package-manager">The Swift Package Manager</a> to install <code>ExtensionKit</code> by adding the proper description to your <code>Package.swift</code> file:</p>

<pre><code class="swift language-swift">import PackageDescription

let package = Package(
    name: "PROJECT_NAME",
    targets: [],
    dependencies: [
        .package(url: "https://github.com/MohammadRezaAnsari/ExtensionKit", from: "1.4.0")
    ]
)
</code></pre>

<p>Next, add <code>ExtensionKit</code> to your targets dependencies like so:</p>
<pre><code class="swift language-swift">.target(
    name: "TARGET_NAME",
    dependencies: [
        "ExtensionKit",
    ]
),</code></pre>
<p>Then run <code>swift package update</code>.</p>

</details>
