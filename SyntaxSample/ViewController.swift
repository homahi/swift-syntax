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
        
        // 2-3:タプルを作る
        
        let product = ("Swift", 2014)
        var kingaku = (1000,80)
        var guest = ("大重","おおしげ", 1234)
        
        let data = (1000,80)
        let (price1, tax) = data
        let kingaku1 = price1 + tax
        print(kingaku)
        
        // _を使って必要なものだけ受け取る
        let (price2, _) = data
        print(price2)
        
        // index番号でもアクセスできる
        let price3 = data.0
        let tax1 = data.1
        print(price3+tax1)
        
        let kingaku2 = (price:1000, tax:80)
        let seikyugaku = kingaku2.price + kingaku2.tax
        print(seikyugaku)
        
        //        kingaku = (1080, "内税") タプルは型推論が行われ、それ以降は最初の宣言時の推論と同じものしか入れられない
        
        // 2-4:一般的なものは使わない
        
        //レンジ演算子
        let rangeInt = -5..<5
        print(rangeInt.contains(-3))
        print(rangeInt.contains(2))
        print(rangeInt.contains(5))
        
        let rangeDouble = 0.0...1.0
        print(rangeDouble.contains(0.1))
        print(rangeDouble.contains(1.0))
        print(rangeDouble.contains(1.5))
        
        // 特にfor文で使うのが便利そう
        for i in (1...5){
            print("\(i)回目")
        }
        
        // 2-5:if文
        // カンマで区切ることができるらしい
        
        let if1 = 56
        let if2 = 62
        
        if if1>=50, if2>=50, (if1+if2)>=120{
            print("合格" )
        }
        
        // 2-6:switch文
        // レンジ演算子で振り分けることができるのが良い
        
        for _ in 1...20{
            let num = arc4random_uniform(50)
            print("\(num)", terminator: "")
            switch num{
            case (10...15):
                print(":交換 ", terminator: "")
            case 20,(31...35),40:
                print(":再検査 ", terminator: "")
            default:
                print(":合格 ", terminator: "")
            }
        }
        
        // タプルを利用した振り分け
        let size = (6, 11)
        switch size {
        case (0,0):
            print("幅高さ共に0です")
        case (5...10, 5...10):
            print("規定サイズです")
        case (_,5...10):
            print("高さ\(size.0)が規格外です")
        case (5...10,_):
            print("高さ\(size.1)が規格外です")
        default:
            print("幅高さ共に規格外です")
        }
        
        // ヴァリューバインディング
        let size1 = (6, 11)
        switch size1 {
        case (0,0):
            print("幅高さ共に0です")
        case (5...10, 5...10):
            print("規定サイズです")
        case (let width,5...10):
            print("高さ\(width)が規格外です")
        case (5...10,let height):
            print("高さ\(height)が規格外です")
        default:
            print("幅高さ共に規格外です")
        }
        
        // 値の振り分けに条件式を使う
        // switchにはdefaultが必須らしい
        let size2 = (45, 40, 100)
        switch size2 {
        case let (width, height, _) where (width>=60||(height>=60)):
            print("規定外:幅高さのどちらかが60以上")
        case let (_, _, weight) where (weight>=80):
            print("規定外:重さが80以上")
        default:
            print("規定サイズ内")
        }
        
        // defaultを省略することができるらしい
        let aPoint = (50,100)
        switch aPoint {
        case (0,0):
            print("中心点です")
        case (0,_):
            print("x軸上の点です")
        case (_,0):
            print("y軸上の点です")
        case let(x,y):
            print("点(\(x),\(y))です")
        }
        
        
        // switchはbreak文を書かなくても良い
        // fallthroughを用いることでJavaのswitch文のような用い方もできる
        var abc = (a:false, b:false, c:false)
        let fall = "b"
        switch fall {
        case "a":
            abc.a = true
            fallthrough
        case "b":
            abc.b = true
            fallthrough
        case "c":
            abc.c = true
            fallthrough
        default:
            print(abc)
        }
        
        //2-7: for-in
        for num in 5...9{
            let value = num * 2
            print(value, terminator: ",")
        }
        
        for _ in 1...15{
            let num = arc4random_uniform(100)
            print(num, terminator:",")
        }
        
        for i in 0...2 {
            for j in 0...2 {
                let point = (5*i, 10*j)
                print("\(i)-\(j)回目 \(point)")
            }
        }
        
        let numList = [3,2,6,5,8,7,9]
        var sum = 0
        for num in numList{
            sum += num
        }
        print("合計 \(sum)")
        
        // stringから順に取り出す
        let message = "おもてなし"
        for char in message {
            print(char)
        }
        
        for num in stride(from:10, to: 30, by:3){
            print(num, terminator:",")
        }
        
        // 2-8: while文
        
        var tickets = 5
        var power = 30
        while (tickets>0)&&(power<100){
            tickets -= 1
            power += 20
        }
        print("power \(power)、残チケット\(tickets)")
        
        // repeat-whileはdo-whileと近い
//        var a:UInt32, b:UInt32, c:UInt32
//        var total:UInt32
//        repeat {
//            a = arc4random_uniform(13)+1
//            b = arc4random_uniform(13)+1
//            c = arc4random_uniform(13)+1
//            total = a+b+c
//        } while (total != 21)
//        print("\(a),\(b),\(c)")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

