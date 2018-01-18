//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Box {
        let width :Int
        let height: Int
        let size:String
        
        init(width:Int, height:Int){
            self.width = width
            self.height = height
            
            if(width + height)<250{
                size = "M"
            } else{
                size = "L"
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let box1 = Box(width:120, height:80)
        let box2 = Box(width:150, height:120)
        print(box1)
        print(box2)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

