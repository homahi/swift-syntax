//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Stock{
        var name:String
        var data:[String:Int] = [:]
        init(name:String){
            self.name = name
        }
        
        subscript(color:String, size:Double) -> Int {
            get {
                let key = color + String(size)
                if let value = data[key]{
                    return value
                } else{
                    return 0
                }
            }
            
            set {
                let key = color + String(size)
                data[key] = newValue
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var shoes = Stock(name: "Tiger")
        shoes["green", 24.5] = 3
        shoes["green", 25.0] = 5
        
        shoes["green", 24.5] -= 2
        shoes["green", 25.0] += 1
        
        shoes["red", 26.0] += 5
        
        print(shoes.name)
        print(shoes["green", 24.5])
        print(shoes["green", 25.0])
        print(shoes["red", 26.0])
        print(shoes["red", 25.5])
        print(shoes["white", 25.0])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

