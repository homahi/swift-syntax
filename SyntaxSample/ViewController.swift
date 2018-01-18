//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct ColorBox {
        var width: Int
        var height: Int
        var color : String
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var redbox = ColorBox(width: 100, height:100, color: "red")
        print("幅\(redbox.width)、高さ\(redbox.height)、色\(redbox.color)")
        
        redbox.width = 90
        redbox.color = "blue"
        print("幅\(redbox.width)、高さ\(redbox.height)、色\(redbox.color)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

