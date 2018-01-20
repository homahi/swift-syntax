//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    

    @IBOutlet weak var myLabel4: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel1: UILabel!
    @IBAction func thankYou(_ sender: Any) {
        myLabel.text = "ありがとう"
    }
    @IBAction func hello(_ sender: Any) {
        myLabel.text="こんにちは"
    }
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tanka = 120
        let kosu = 4
        
        myLabel1.text = "単価\(tanka)、\(kosu)個"
        myLabel2.text = String(tanka*kosu)
        myLabel3.text = "金額" + myLabel2.text! + "円"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

