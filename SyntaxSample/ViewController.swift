//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Line {
        var p1: Point
        var p2: Point
        
        mutating func move(h:Double, v:Double){
            p1.x += h
            p1.y += v
            p2.x += h
            p2.y += v
        }
    }
    
    struct Point {
        var x: Double
        var y: Double
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let point1 = Point(x: 100, y: 100)
        let point2 = Point(x: 300, y: 200)
        
        var theLine = Line(p1: point1, p2: point2)
        
        print("移動前のp1\(theLine.p1)")
        print("移動前のp2\(theLine.p2)")
        print("--------")
        
        theLine.move(h:50, v: 60)
        print("移動前のp1\(theLine.p1)")
        print("移動前のp2\(theLine.p2)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

