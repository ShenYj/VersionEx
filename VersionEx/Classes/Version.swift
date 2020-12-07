//
//  Version.swift
//  Nimble
//
//  Created by ShenYj on 2020/12/7.
//

import Foundation

public struct App {
    
    /// CFBundleShortVersionString
    public static var version: String = {
        var version: String = ""
        if let infoDictionary = Bundle.main.infoDictionary {
            version = infoDictionary["CFBundleShortVersionString"] as! String
        }
        return version
    }()
}

