//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mySwitch1: UISwitch!
    @IBOutlet weak var mySwitch2: UISwitch!
    @IBAction func saveStatus(_ sender: Any) {
        let defaults = UserDefaults.standard
        // mySitch1の値をキー"switchOn"で保存する
        defaults.set(mySwitch1.isOn, forKey: "switchOn")
    }
    @IBAction func readStatus(_ sender: Any) {
        let defaults = UserDefaults.standard
        // キー"switchOn"の値をBoolとして読んでmySwitch2に設定する
        mySwitch2.isOn = defaults.bool(forKey: "switchOn")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

