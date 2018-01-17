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
        
        let car1 = Car()
        let car2 = Car()
        print("動いている車は\(Car.count)台")
        car1.start()
        car2.start()
        print("動いている車は\(Car.count)台")
        car2.stop()
        print("動いている車は\(Car.count)台")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

