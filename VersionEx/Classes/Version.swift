//
//  Version.swift
//  VersionEx
//
//  Created by ShenYj on 2020/12/7.
//

import Foundation

public struct Version {
    
    // MARK: 全局访问点
    
    public private(set) static var vx: Version = {
        var versionEx = Version()
        versionEx.major = versionEx[.major]
        versionEx.minor = versionEx[.minor]
        versionEx.patch = versionEx[.patch]
        return versionEx
    }()
    
    // MARK: 属性
    
    // 主版本号
    public private(set) var major: String?
    // 次版本号
    public private(set) var minor: String?
    // 修订版本号
    public private(set) var patch: String?
    
    // MARK: 下标
    
    // 当前版本是否低于目标版本
    // 返回值 -> true  代表低于目标版本
    // 返回值 -> false 代表不低于目标版本
    public subscript(_ targetVersion: String) -> Bool { lower(targetVersion) }
    
}

extension Version: TargetVersion { }
extension Version: VersionConvertible { }
extension Version: Comparable { }

