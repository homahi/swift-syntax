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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action : #selector(self.hello(_:)))
        // ビューを作る
        let myView = UIView(frame: CGRect(x: 100, y: 100, width: 80, height:80))
        myView.backgroundColor = UIColor.green
        // tagに番号をつける
        myView.tag = 1
        // ビューにタップジェスチャーレコグナイザを追加する
        myView.addGestureRecognizer(tapGesture)
        view.addSubview(myView)
    }
    
    @objc func hello(_ sender:UITapGestureRecognizer){
        // tagの番号を調べる
        let tagNo = sender.view?.tag
        print("ハロー", tagNo!)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

