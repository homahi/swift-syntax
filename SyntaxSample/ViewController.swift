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
        
        let myLabel = UILabel()
        myLabel.text = "ハローワールド"
        
        myLabel.frame = CGRect(x:50, y:100, width:200, height: 21)
        
        myLabel.textColor = UIColor.black
        myLabel.backgroundColor = UIColor.lightGray
        
        view.addSubview(myLabel)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

