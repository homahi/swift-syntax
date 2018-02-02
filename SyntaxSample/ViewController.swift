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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // アザラシをビューに追加する
        let homahi = UIImageView(image: UIImage(named:"homahi"))
        homahi.center = CGPoint(x:50, y:150)
        view.addSubview(homahi)
        
        // 画面を横に行ったり来たりする
        UIView.animate(withDuration: 1.0,
                       delay:0,
                       options:[.curveEaseInOut,
                                .autoreverse,
                                .repeat],
                       animations:{
                        homahi.center.x = self.view.frame.width - 50
        },
                       completion:nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

