//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate  {
    
    @IBAction func tabView(_ sender: UITapGestureRecognizer) {
        // タップされた座標を調べる
        let tapPoint = sender.location(in: view)
        
        // 指定した最終値になるようにアニメーションする
        UIView.animate(withDuration: 1.0, delay: 0, options:[.curveEaseInOut], animations: {self.homahi.center = tapPoint}, completion: nil)
    }
    @IBOutlet weak var homahi: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

