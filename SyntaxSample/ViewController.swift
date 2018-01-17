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
    
    enum Grade{
        case Matsu, Take, Ume
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kisetsu = Season.Winter
        let gradeType = Grade.Matsu
        print(kisetsu)
        print(gradeType)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

