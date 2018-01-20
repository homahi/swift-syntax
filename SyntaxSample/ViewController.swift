//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    

    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textdata = "詳細!Swift iOSアプリ開発入門ノート"
        myLabel1.text = textdata
        
        myLabel2.adjustsFontSizeToFitWidth = true
        myLabel2.text = textdata

        myLabel3.adjustsFontSizeToFitWidth = true
        myLabel3.minimumScaleFactor = 0.6
        myLabel3.text = textdata
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

