//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

enum Season{
    case Spring, Summer, Autumn, Winter
}

class MyClass{
    let kisetsu = Season.Autumn
    func sukinaKisetsu() -> Season{
        return kisetsu
    }
}

class ViewController: UIViewController {
    
    enum Signal:String{
        case Green = "緑色"
        case Red = "赤色"
        
        var color:String{
            return self.rawValue
        }
        
        static func description() -> String{
            return "GreenまたはRedのシグナルです。"
        }
        
        func isRun() -> Bool{
            if self == .Green{
                return true
            } else {
                return false
            }
        }
        
        mutating func turn(){
            if self == .Green{
                self = .Red
            } else{
                self = .Green
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let text = Signal.description()
        print(text)
        
        var lamp = Signal.Green
        
        print(lamp.color)
        print(lamp.isRun())
        print("----値を反転する----")
        lamp.turn()
        print(lamp.color)
        print(lamp.isRun())
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

