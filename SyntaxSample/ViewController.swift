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
    
    // 角丸四角形の図形イメージを作る
    func makeRoundRectImage(width w: CGFloat, height h:CGFloat, corner r:CGFloat) -> UIImage{
        // イメージ処理の開始
        let size = CGSize(width: w, height: h)
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        // コンテキスト
        let context = UIGraphicsGetCurrentContext()
        
        // サイズを決める
        let drawRect = CGRect(x: 0, y:0, width: w, height: h)
        // 図形のバスを作る(角丸四角形)
        let drawPath = UIBezierPath(roundedRect: drawRect, cornerRadius: r)
        
        // 塗り色
        context?.setFillColor(red:0.8, green:0.8, blue: 0.8, alpha:1.0)
        // パスを塗る
        drawPath.fill()
        
        // イメージコンテキストからUIImageを作る
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    func makeBoxImage(width w: CGFloat, height h:CGFloat) -> UIImage{
        // イメージ処理の開始
        let size = CGSize(width: w, height: h)
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        // コンテキスト
        let context = UIGraphicsGetCurrentContext()
        
        // サイズを決める
        let drawRect = CGRect(x: 0, y: 0, width: w, height: h)
        // パスを作る(四角形)
        let drawPath = UIBezierPath(rect: drawRect)
        
        // 塗り色
        context?.setFillColor(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
        // パスを塗る
        drawPath.fill()
        
        // 線の色
        context?.setStrokeColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        
        // パスを描く
        drawPath.stroke()
        
        // イメージコンテキストからUIImageを作る
        let image = UIGraphicsGetImageFromCurrentImageContext()
        // イメージ処理の終了
        UIGraphicsEndImageContext()
        
        return image!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 四角形のイメージを作る
//        let boxImage = makeBoxImage(width: 240, height: 180)
        let boxImage = makeRoundRectImage(width: 240, height: 180, corner: 30)

        // イメージビューに設定する
        let boxView = UIImageView(image: boxImage)
        // 画面に表示する
        boxView.center = view.center
        view.addSubview(boxView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

