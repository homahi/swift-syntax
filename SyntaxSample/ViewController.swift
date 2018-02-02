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
    
    func drawLine() -> UIImage{
        // 折れ線にする点の配列
        var pointList = Array<CGPoint>()
        let pointCount = 20 // 点の個数
        // xの間隔
        let dx = Int(view.frame.width)/pointCount
        // yの振幅
        let height = UInt32(view.frame.height)/2
        // 点の配列を作る
        for n in 1...pointCount {
            let px = CGFloat(dx * n)
            let py = CGFloat(arc4random_uniform(height) + 50)
            let point = CGPoint(x: px, y: py)
            pointList.append(point)
        }
        
        // イメージ処理の開始
        let size = view.bounds.size
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        
        // パスの初期化
        let drawPath = UIBezierPath()
        // 始点に移動する
        drawPath.move(to: pointList[0])
        // 配列から始点の値を取り除く
        pointList.removeFirst()
        // 配列から点を取り出して連結していく
        for pt in pointList{
            drawPath.addLine(to: pt)
        }
        
        // 線の色
        UIColor.blue.setStroke()
        // 線幅
        drawPath.lineWidth = 2.0
        // 線のつなぎ目の形状
        drawPath.lineJoinStyle = .round
        // 点線にする
        drawPath.setLineDash([4.0,2.0], count: 2, phase: 0.0)
        // 線を描く
        drawPath.stroke()
        
        // イメージコンテキストからUIImage
        let image = UIGraphicsGetImageFromCurrentImageContext()
        // イメージ処理の終了
        UIGraphicsEndImageContext()
        return image!

    }
    
    func arcPercent(_ radius: CGFloat, _ percent:Double) -> UIBezierPath{
        let endAngle = 2*Double.pi*percent/100 - Double.pi/2
        let path = UIBezierPath(
            arcCenter: CGPoint(x:0, y:0),
            radius: radius,
            startAngle: CGFloat(-Double.pi/2),
            endAngle: CGFloat(endAngle),
            clockwise: percent > 0)
        return path
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let drawImage = drawLine()
        let drawView = UIImageView(image: drawImage)
        
        view.addSubview(drawView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

