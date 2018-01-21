//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let labelA = UILabel()
        labelA.text = "ラベルA"
        labelA.frame = CGRect(x:80, y:150, width:110, height:21)
        labelA.backgroundColor = UIColor.orange
        labelA.textColor = UIColor.white
        
        self.view.addSubview(labelA)
        
        // ビューを作る
        let theView = UIView()
        // ビューの領域と背景色
        theView.frame = CGRect(x:60, y:100, width: 210, height:200)
        theView.backgroundColor = UIColor(red:0.9, green:0.9, blue:0.6, alpha:1.0)
        
        // ラベルBを作る
        let labelB = UILabel()
        labelB.text = "ラベルB"
        // ラベルの領域
        labelB.frame = CGRect(x:50, y:60, width: 100, height:21)
        labelB.backgroundColor = UIColor.orange
        labelB.textColor = UIColor.white
        
        // ラベルBをtheViewに追加する
        theView.addSubview(labelB)
        self.view.addSubview(theView)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

