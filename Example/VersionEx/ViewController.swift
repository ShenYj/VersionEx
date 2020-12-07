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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let version = App.version
        print("CFBundleShortVersionString: \(version)")
        versionLabel.text = "CFBundleShortVersionString:" + version
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

