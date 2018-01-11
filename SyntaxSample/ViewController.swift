//
//  ViewController.swift
//  SyntaxSample
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var msg = "ハロー"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(msg)
        
        print("ありがとう")
        
        //ステートメントの区切り
        let ans = 14 + 25 + 36
        print(ans)
        
        let ans1 = 14
                        + 25
                        + 36
        print(ans1)
        
        let a = 10; let b = a + 20 ; print(b)
        
        // コメントを書くこともできる
        /* 複数行も書ける
            この辺は他の言語とあまり変わりがない
        */
        
        /* command + /はコメント*/
        let msg1 = "おはよう"
        let msg2 /*途中のコメント*/ = "おやすみなさい"
        let msg3 = "さようなら"
        print(msg1)
        print(msg2)
        print(msg1,msg2,msg3)
        print(msg1,msg2,msg3,separator:"/")
        print("blue", "green", separator:"+", terminator:"、")
        print("yellow", terminator:"、")
        print("red")
        print("実行中:", #function)
        let theName = "太郎"
        let theNAME = "二郎"
        print(theNAME)
        print(theName)
        
        // 2-2: 定数、整数
        // letは定数らしい、JavaScriptとは異なる
        let name: String = "田中"
        let width: Int = 56, height:Int = 75
        
        let rate:Double
        let price:Double
        rate = 1.02
        price = 2500 * rate
//        price = 1000 * rate ここでエラーになる
        
        // varは変数
        var var_name: String = "ビジター"
        var level: Int = 1, point: Int = 10 //,で続けて宣言できるらしい
        var_name = "鈴木"
        point = 50
        
        var kokugo:Int
        var sansu:Int
        var goukei:Int
        kokugo = 56
        sansu = 67
        goukei = kokugo + sansu
        print(goukei)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

