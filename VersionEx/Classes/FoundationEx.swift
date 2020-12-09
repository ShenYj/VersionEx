//
//  FoundationEx.swift
//  VersionEx
//
//  Created by ShenYj on 2020/12/9.
//

import Foundation

internal extension String {
    
    /// 去空格、换行符
    var withoutSpaceAndNewLine: String {
        replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "\n", with: "")
    }
}

internal extension String {
    
    /// 各个版本号字符串集合
    var subVersions: [String?] {
        let subs: [String?] = self
            .split(separator: ".", maxSplits: 2, omittingEmptySubsequences: true)
            .map { String($0) }
        var initialization = Array<String?>(repeating: nil, count: 3)
        if subs.isEmpty {
            return initialization
        }
        initialization[0...subs.count - 1] = subs[...]
        return initialization
    }
    
    /// 各个版本号值类型集合
    var subVersionValues: [Double?] { subVersions.map{ ($0 != nil) ? Double($0!) : nil } }
}
