//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

extension UIColor{
    class var wakakusa:UIColor{
        return UIColor(red:0.6706, green:0.7882, blue:0.0, alpha: 1)
    }
    
    class var beniaka:UIColor{
        return UIColor(red: 0.898, green:0.0, blue:0.3098, alpha:1)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myGameObj = MyGame()
        myGameObj.hit()
        print(myGameObj.gamePoint)
        myGameObj.miss()
        print(myGameObj.gamePoint)
        myGameObj.hit()
        print(myGameObj.gamePoint)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

