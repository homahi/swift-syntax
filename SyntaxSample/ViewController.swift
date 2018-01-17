//
//  ViewController.swift
//  SyntaxSample
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myCircle = Circle()
        print("半径\(myCircle.radius)")
        print("面積\(myCircle.area)")

        myCircle.area *= 2
        print("半径\(myCircle.radius)")
        print("面積\(myCircle.area)")
        
        myCircle.radius = 3.0
        print("半径\(myCircle.radius)")
        print("面積\(myCircle.area)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

