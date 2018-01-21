//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var arrow: UIImageView!
    @IBOutlet weak var tombo: UIImageView!
    @IBOutlet weak var sky: UIView!
    @IBAction func catchTombo(_ sender: Any) {
        // skyビューの座標tombo.centerをviewビューの座標系に変換する
        var point = view.convert(tombo.center, from: sky)
        // 矢印の先端がpointを指し示すように調整する
        point.x += arrow.bounds.width/2
        point.y -= arrow.bounds.height/2
        // 矢印を移動させる
        arrow.center = point
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

