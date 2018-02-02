//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBAction func tapHomahi(_ sender: UITapGestureRecognizer) {
        // タップされたとんぼ
        let tombo = sender.view!
        // 画面のランダムな座標に移動する
        let newX = arc4random_uniform(UInt32(view.frame.width))
        let newY = arc4random_uniform(UInt32(view.frame.height))
        tombo.center = CGPoint(x: Double(newX), y: Double(newY))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

