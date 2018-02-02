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
    }
    @IBOutlet weak var homahi: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // タイマーを作成する
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.step), userInfo: nil, repeats: true)

    }
    
    @objc func step(){
        // 水平方向へ移動
        homahi.center.x += 10
        // 右辺から外へ出たら
        let carWidth = homahi.bounds.width
        if homahi.center.x > (view.bounds.width + carWidth/2){
            // 左辺の手間に戻す
            homahi.center.x = -carWidth
            // y座標はランダムな高さに変更
            let viewH = view.bounds.height
            homahi.center.y = CGFloat(arc4random_uniform(UInt32(viewH)))
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

