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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel1.text = "10.2"
        
        guard let num = Double(myLabel1.text!) else{
            return
        }
        
        if num >= 0.0 {
            myLabel1.textColor = UIColor.black
            myLabel1.backgroundColor = UIColor.white
        } else{
            myLabel1.textColor = UIColor.white
            myLabel1.backgroundColor = UIColor.red
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

