//
//  TargetVersion.swift
//  VersionEx
//
//  Created by ShenYj on 2020/12/8.
//

import Foundation

public protocol TargetVersion {
    
    /// 项目版本 未做任何处理 (CFBundleShortVersionString)
    var version: String { get }
}

public extension TargetVersion {
    
    var version: String {
        var version: String = ""
        if let infoDictionary = Bundle.main.infoDictionary {
            version = infoDictionary["CFBundleShortVersionString"] as! String
        }
        return version.withoutSpaceAndNewLine
    }
}
