//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    func RGBA(red:CGFloat, green:CGFloat, blue: CGFloat, alpha:CGFloat) -> UIColor{
        let r = red/255.0
        let g = green/255.0
        let b = blue/255.0
        let rgba = UIColor(red:r, green:g, blue:b, alpha: alpha)
        return rgba
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color = RGBA(red:100, green:255, blue: 200, alpha:1)
        self.view.backgroundColor = color
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

