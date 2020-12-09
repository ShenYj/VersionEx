//
//  VersionConvertible.swift
//  VersionEx
//
//  Created by ShenYj on 2020/12/8.
//

import Foundation

internal enum VersionType {
    // 主版本号
    case major
    // 次版本号
    case minor
    // 修订版本号
    case patch
}

internal protocol VersionConvertible {
    
    var subVersion: [String?] { get }
    var subVersionValues: [Double?] { get }
 
    subscript(_ index: Int) -> String? { get }
    subscript(_ type: VersionType) -> String? { get }
    subscript(_ type: VersionType) -> Double? { get }
}

internal extension VersionConvertible where Self == Version {
    
    /// 各个版本号字符串集合
    var subVersion: [String?] { self.version.subVersions }
    
    /// 各个版本号值类型集合
    var subVersionValues: [Double?] { self.version.subVersionValues }
    
    // MARK: 下标方法
    
    subscript(_ index: Int) -> String? { subVersion[index] }
    
    subscript(_ type: VersionType) -> String? {
        switch type {
        case .major:
            return self[0]
        case .minor:
            return self[1]
        case .patch:
            return self[2]
        }
    }
    
    subscript(_ type: VersionType) -> Double? {
        switch type {
        case .major:
            if let sub = self[0] {
                return Double(sub)
            }
            return nil
        case .minor:
            if let sub = self[1] {
                return Double(sub)
            }
            return nil
        case .patch:
            if let sub = self[2] {
                return Double(sub)
            }
            return nil
        }
    }
}
