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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let shirt1 = Pattern.Monotone(.red)
        let shirt2 = Pattern.Border(color1: .white, color2: .red)
        let shirt3 = Pattern.Dots(base: .yellow, dot1: .white, dot2: .green)
        
        let patternList = [shirt1, shirt2, shirt3]
        for thePattern in patternList{
            switch thePattern{
            case .Monotone(let c):
                print("\(c.rawValue)の無地")
            case .Border(let c1, let c2):
                print("\(c1.rawValue)と\(c2.rawValue)のボーダー")
            case let .Dots(base, dot1, dot2):
                let bColor = base.rawValue
                let dc1 = dot1.rawValue
                let dc2 = dot2.rawValue
                print("\(bColor)地に\(dc1)と\(dc2)のドット")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

