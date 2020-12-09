//
//  Comparable.swift
//  VersionEx
//
//  Created by ShenYj on 2020/12/9.
//

import Foundation

internal protocol Comparable {
    
    /// 当前项目版本与目标版本的比对结果
    ///
    ///  目标版本非nil情况下才有意义
    ///  暂不支持包含数字外比对
    ///
    /// - Parameter target: 目标版本
    func lower(_ target: String?) -> Bool
}

internal extension Comparable where Self == Version {
    
    func lower(_ target: String?) -> Bool {
        guard let targetVersion = target else {
            return false
        }
        let targetSubVersions = targetVersion.subVersionValues
        let appSubVersions = self.subVersionValues
        
        for (index, subVersion) in targetSubVersions.enumerated() {
            if let targetSub = subVersion {
                guard let appSub = appSubVersions[index] else { return true }
                if appSub < targetSub { return true }
            }
        }
        return false
    }
}
