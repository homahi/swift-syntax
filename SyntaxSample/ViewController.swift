//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    class BoxClass{
        var size:String = "M"
        var color:String = "red"
    }
    
    struct BoxStruct {
        var size: String = "M"
        var color:String = "red"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cBox1 = BoxClass()
        let cBox2 = cBox1
        cBox2.color = "green"
        
        let sBox1 = BoxStruct()
        var sBox2 = sBox1
        sBox2.color = "green"
        
        print("cBox1:\(cBox1.size) \(cBox1.color)")
        print("cBox2:\(cBox2.size) \(cBox2.color)")
        print("sBox1:\(sBox1.size) \(sBox1.color)")
        print("sBox2:\(sBox2.size) \(sBox2.color)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

