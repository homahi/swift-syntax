//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Ball {
        static let madein = "日本"
        static var sozai = "紙"
        var radius: Double = 10.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       Ball.sozai = "木"
        let ball1 = Ball(radius: 15)
        let ball2 = Ball()
        print(ball1.radius)
        print(ball2.radius)
        print(Ball.madein)
        print(Ball.sozai)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

