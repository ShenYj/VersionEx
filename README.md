# VersionEx

[![CI Status](https://img.shields.io/travis/ShenYj/VersionEx.svg?style=flat)](https://travis-ci.org/ShenYj/VersionEx)
[![Version](https://img.shields.io/cocoapods/v/VersionEx.svg?style=flat)](https://cocoapods.org/pods/VersionEx)
[![License](https://img.shields.io/cocoapods/l/VersionEx.svg?style=flat)](https://cocoapods.org/pods/VersionEx)
[![Platform](https://img.shields.io/cocoapods/p/VersionEx.svg?style=flat)](https://cocoapods.org/pods/VersionEx)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

VersionEx is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'VersionEx'
```

## Used

- app version

    ```swift
    // app的版本号
    "App 版本: " + Version.vx.version
    // 各个子版本号
    "主版本: \(Version.vx.major ?? "-")"
    "次版本: \(Version.vx.minor ?? "-")"
    "修订版本: \(Version.vx.patch ?? "-")"
    ```

- compare

    ```swift
    Version.vx["1.0.1"]
    ```

## Author

ShenYj, shenyanjie123@foxmail.com

## License

VersionEx is available under the MIT license. See the LICENSE file for more info.
