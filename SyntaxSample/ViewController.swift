//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let labelA = UILabel()
        labelA.text = "ラベルA"
        labelA.frame = CGRect(x:80, y:150, width:110, height:21)
        labelA.backgroundColor = UIColor.orange
        labelA.textColor = UIColor.white
        
        self.view.addSubview(labelA)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

