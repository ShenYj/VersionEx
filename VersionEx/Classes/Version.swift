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
    
    public private(set) var major: String?
    public private(set) var minor: String?
    public private(set) var patch: String?
    
    // MARK: 下标
    
    public subscript(_ targetVersion: String) -> Bool { lower(targetVersion) }
    
}

extension Version: TargetVersion { }
extension Version: VersionConvertible { }
extension Version: Comparable { }

