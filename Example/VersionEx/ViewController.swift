//
//  ViewController.swift
//  VersionEx
//
//  Created by ShenYj on 12/07/2020.
//  Copyright (c) 2020 ShenYj. All rights reserved.
//

import UIKit
import VersionEx

class ViewController: UIViewController {

    @IBOutlet weak var versionLabel: UILabel!
    @IBOutlet var subVersionLabels: [UILabel]!
    @IBOutlet weak var compareResultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // app的版本号
        versionLabel.text = "App 版本: " + Version.vx.version
        // 各个子版本号
        subVersionLabels[0].text = "主版本: \(Version.vx.major ?? "-")"
        subVersionLabels[1].text = "次版本: \(Version.vx.minor ?? "-")"
        subVersionLabels[2].text = "修订版本: \(Version.vx.patch ?? "-")"
        // 版本比对结果
        let targetVersion = "1.1"
        let result = Version.vx[targetVersion] ? "低于": "不低于"
        compareResultLabel.text = "当前版本[\(Version.vx.version)] \(result) [\(targetVersion)]版本 "
    }

}

