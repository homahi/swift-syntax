//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

enum MensSize {
    case S
    case M
    case L
    case XL
}

enum WomensSize {
    case XS, S, M, L
}

class ViewController: UIViewController {
    
    func packing(size:WomensSize) -> String{
        var stuff: String
        switch size{
        case .XS, .S:
            stuff = "女性用XS, Sサイズ備品"
        case .M:
            stuff = "女性用Mサイズ備品"
        case .L:
            stuff = "女性用Lサイズ備品"
        }
        return stuff
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let theStuff = packing(size: .M)
        print(theStuff)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

