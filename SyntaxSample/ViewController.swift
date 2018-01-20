//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!
    @IBAction func random(_ sender: Any) {
        let num = arc4random_uniform(100)
        numLabel.text = String(num)
        
        okButton.isEnabled = (num>=50)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tapOK(_ sender: Any) {
        print("OK")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

