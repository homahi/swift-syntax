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
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        print("test")
        // flowerを作る
        let flower = UIImageView(image: UIImage(named: "homahi"))
        // 透明度を0にする
        flower.alpha = 0
        
        // 0.2倍サイズにする
        let scaleTransform = CGAffineTransform(scaleX: 0.2, y:0.2)
        // -π/2 回転する
        let rotationTransform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
        // トランスフォームを足し合わせる
        let transform = scaleTransform.concatenating(rotationTransform)
        // flowerを変形させる
        flower.transform = transform
        
        // タップされた画像にflowerを追加する
        flower.center = sender.location(in: self.view)
        view.addSubview(flower)
        
        // アニメーション
        UIView.animate(withDuration: 2.0,
                       delay: 0,
                       options: [.curveEaseInOut],
                       animations:{
                        flower.alpha = 1.0
        },
                       completion: {(finished:Bool) in
                        self.fadeoutAndRemove(flower)
        })
    }
    
    func fadeoutAndRemove(_ view:UIView){
        // フェードアウトする
        UIView.animate(
            withDuration: 2.0,
            delay: 3.0,
            options: UIViewAnimationOptions(),
            animations: {
                view.alpha = 0.0
        },
            completion:{(finished:Bool) in
                // ビューから取り除く
                view.removeFromSuperview()
        })
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

