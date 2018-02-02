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
    
    @IBAction func getList(_ sender: Any) {
        // ユーザーデフォルトを参照する
        let defaults = UserDefaults.standard
        // キー"myList"の値を配列として読み込む
        if let theList = defaults.array(forKey: "myList"){
            print(theList)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 配列を作る
        let list = [1,2,3]
        // ユーザーデフォルトを参照する
        let defaults = UserDefaults.standard
        defaults.set(list, forKey: "myList")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

