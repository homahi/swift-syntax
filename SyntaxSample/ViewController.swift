//
//  ViewController.swift
//  SyntaxSample
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var members = [String:Int]()
    
    func updateMembers(theKey:String, newValue:Int){
        if let oldValue = members.updateValue(newValue, forKey: theKey){
            print("\(theKey)の値を\(oldValue)から\(newValue)に更新しました。")
        }else{
            print("\(theKey):\(newValue)を追加しました。")
        }
        print(members)
    }
    
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
        
        // 2-9:continue/break
        // 2-9:continue
        let vlist = [3,5,-2,6,-8,2]
        var total = 0
        for v in vlist {
            if v<0{
                continue
            }
            total += v
            print("\(v),")
        }
        print("合計:\(total)")
        
        // ループにラベルを付ける
        xloop:for x in 0...3{
            yloop:for y in 0...3{
                if(x<y){
                    print("------------")
                    continue xloop
                }
                print((x,y))
            }
        }
        
        // 内側のループから外側のループをブレイクする
        let list:Array = [[4,2],[5],[9,8,10],[6,8,-9],[4,2],[9,3]]
        outloop:for alist in list{
            inloop:for v in alist{
                if v<0{
                    print(alist)
                    break outloop
                }
            }
        }
        
        // 3-1:サイコロ関数
        func dice() -> Int{
            let number = 1 + arc4random_uniform(6)
            return Int(number)
        }
        
        print(dice())
        
        for _ in 1...5{
            let num = dice()
            print(num)
        }
        
        func hello() -> Void{
            print("ハロー")
        }
        
        func thanks(num:Int){
            if num <= 0{
                return
            }
            print("\(num)個。ありがとうございました。")
        }
        
        thanks(num:5)
        thanks(num:0)
        thanks(num:2)
        
        // guard-else文条件を満たさなかった時に実行される
        // deferは最後に必ず実行される
        
        func half(num:Double){
            defer{
                print("計算終了")
            }
            guard num >= 10 else {
                return
            }
            let halfNum = num/2
            print("\(num)の半分は\(halfNum)")
        }
        
        half(num:25)
        half(num:9)
        half(num:12)

        // 3-2:
        // 引数をとる
//        func price1(ninzu:Int) -> Int {
//            let tanka = 1200
//            let result = tanka * ninzu
//            return result
//        }
//
//        let price_ = price1(ninzu:5)
//        print(price)
//
//        // 単価と人数を引数にする
//        func price2(ninzu:Int, tanka:Int) -> Int{
//            let result = tanka * ninzu
//            return result
//        }
//
//        let price_2 = price2(ninzu:3,tanka:1300)
//        print(price)
//
//        // 引数の個数を指定しない
//        func sum(numbers: Double...) -> Double{
//            var total: Double = 0.0
//            for num in numbers{
//                total += num
//            }
//            return total
//        }
//
//        let goukei = sum(numbers: 5,6,7,8,9)
//        print(goukei)
//
//
//        // 引数に初期値を設定する
//        func price3(tanka:Int, kosu:Int = 1, souryou:Int = 250) -> Int{
//            let result = tanka * kosu + souryou
//            return result
//        }
//
//        let ex1 = price3(tanka:1000)
//        print("\(ex1)円")
//        let ex2 = price3(tanka:1000, kosu:2)
//        print("\(ex2)円")
//        let ex3 = price3(tanka:2500, souryou:1500)
//        print("\(ex3)円")
//        let ex4 = price3(tanka:1200, kosu:5, souryou:0)
//        print("\(ex4)円")
        
        func testResult(kokugo:Int, sugaku:Int, eigo:Int) -> (total:Int, average:Double){
            let total = kokugo + sugaku + eigo
            var ave = Double(total)/3
            ave = round(ave*10)/10
            return (total, ave)
        }
        let result = testResult(kokugo: 80, sugaku: 68, eigo:72)
        print("合計 \(result.total)")
        print("平均 \(result.average)")
        
        // 関数の多重定義(オーバーロード)
        func calc(a:Int, b:Int) -> Int{
            return a+b
        }
        func calc(c:Int, d:Int) -> Int{
            return c*d
        }
        func calc(a:Int, b:Int, c:Int) -> Int{
            return (a+b)*c
        }
        
        let ans1 = calc(a:2, b:3)
        let ans2 = calc(c:2, d:3)
        let ans3 = calc(a:2, b:3, c:4)
        print(ans1)
        print(ans2)
        print(ans3)
        
        // 3-3:外部引数名を付ける
        // 内部にはエイリアスが貼られる
        func bmi(weight kg:Double, height cm:Double) -> Double{
            if cm == 0 { return -1}
            var result = kg/pow(cm*0.01, 2)
            result = round(result*10)/10.0
            return result
        }
        
        let myBMI = bmi(weight: 56.0, height:172.5)
        print(myBMI)
        
        // 引数名無しで値だけを入力できる関数
        func triangleArea(_ width:Double, _ height:Double) -> Double{
            let result = width * height / 2
            return result
        }
        let area = triangleArea(30, 16.5)
        print(area)
        
        // 4-1:ストリング処理
        let message = "ハロー"
        var bird: String
        bird = "アマツバメ"
        
        let message1 = """
1日目はサイクリング
2日目は釣り
"""
        
        let hello = String("ハロー") + String(2000+20)
        
        // 空文字列であることの判定
        
        func hello(_ who:String) {
            if who.isEmpty{
                return
            }
            let msg = "ハロー!" + who + "さん"
            print(msg)
        }
        
        hello("")
        hello("田中")
        
        // String(repeating:,count:)で繰り返し表現ができる
        let stars = String(repeating:" ★ ", count:10)
        print(stars)
        
        
        // 特殊文字
        let swift = "Swiftとは\n\"アマツバメ\"です。"
        print(swift)
        
        // 文字カウント
        let str_count = "あいうえお12345ABcde(^_^)"
        let num = str_count.count
        print(num)
        
        // ストリングに変数や式を含める
        let entries = 24
        let staff = 3
        let str3 = "参加者\(entries)人。"
        let str4 = "スタッフを含めると\(entries + staff)人です"
        print(str3)
        print(str4)
        
        // ストリングを連結する
        let name1 = "海原"
        let name2 = "次郎丸"
        let str5 = name1 + name2 + "さん"
        print(str5)
        
        // +=演算子でストリングを連結する
        let week = ["日", "月", "火", "水", "木", "金", "土"]
        var oneweek = ""
        for day in week{
            oneweek += day
        }
        print(oneweek)
        
        // ストリングを数値に変換する
        let kakaku:String = "240"
        let kosu:String = "2"
        let kingaku = Int(kakaku)! * Int(kosu)!
        print(kingaku)
        
        // ストリングを小数に変換して計算する
        // Swiftには!をつけることでOptionalをアンラップする機能があるらしい。この辺はJavaと一緒だね。
        let r = "20"
        let pi = "3.14"
        let menseki = Double(r)! * Double(r)! * Double(pi)!
        print("半径\(r)の面積は\(menseki)")
        
        // 数値をストリングに変換する
        let nakami = 135.5
        let package = 12.0
        let str1 = "内容量:" + String(nakami) + "g"
        let str2 = "総重量:" + (nakami + package).description + "g"
        print(str1)
        print(str2)

        // 4-2:ストリングから文字を取り出す
        // 先頭文字を抜き出す
        let str = "Swift入門ノート"
        let start = str.startIndex
        let end = str.endIndex
        let char = str[start]
        print(char)
        
        // 1つ先のインデックス
        var index = str.startIndex
        index = str.index(after: index)
        let chr = str[index]
        print(chr)
        
        // 1つ手間のインデックス
        var end_index = str.endIndex
        end_index = str.index(before: end_index)
        let chr_af = str[end_index]
        print(chr_af)
        
        // 指定の位置の文字を取り出す
        let index1 = str.index(str.startIndex, offsetBy: 5)
        let index2 = str.index(str.endIndex, offsetBy: -4)
        
        let chr1 = str[index1]
        let chr2 = str[index2]
        print((chr1, chr2))
        
        // レンジ演算子でインデックスの範囲を作る
        let zero = str.startIndex
        let range_start = str.index(zero, offsetBy:3)
        let range_end = str.index(zero, offsetBy:6)
        let str1 = str[range_start...range_end]
        let str2 = str[range_start..<range_end]
        print((str1, str2))
        
        // インデックスの位置で分割する
        let half = str.count / 2
        let half_index = str.index(str.startIndex, offsetBy: half)
        let mae = str[..<half_index]
        let ushiro = str[half_index...]
        print(mae)
        print(ushiro)
        
        // 先頭文字を大文字にする
        func cap(_ str:String) -> String{
            let start = str.startIndex
            let chr = str[start]
            let str1 = String(chr)
            let second = str1.index(after: start)
            let str2 = str[second...]
            let capStr = str1.uppercased() + str2.lowercased()
            return capStr
        }
        
        let a = cap("apple")
        let b = cap("APPLE")
        
        // ストリングの比較と検索
        
        // ストリングを比較する
        //let str0 = "Swift入門"
        //let str1 = "SWIFT入門"
        //let str2 = "Swift"+"入門"
        //
        //if str0 == str1{
        //    print("str0とstr1は同じです")
        //} else {
        //    print("str0とstr1は同じではありません")
        //}
        //if str0 == str2{
        //    print("str0とstr2は同じです")
        //} else {
        //    print("str0とstr2は同じではありません")
        //}
        
        //どちらのストリングが大きいか比べる
        //let str1 = "iPad"
        //let str2 = "iPhone"
        //
        //if str1>str2{
        //    print("\(str1)のほうが\(str2)より大きい")
        //} else if str1<str2{
        //    print("\(str2)のほうが\(str1)より大きい")
        //}else{
        //    print("\(str1)と\(str2)は同じ")
        //}
        
        // 前方一致、後方一致
        //let itemList = ["カツ丼", "カツカレー", "親子丼", "天丼"]
        //var menu1 = [String]()
        //var menu2 = [String]()
        //for item in itemList{
        //    if item.hasPrefix("カツ"){
        //        menu1.append(item)
        //    }
        //    if item.hasSuffix("丼"){
        //        menu2.append(item)
        //    }
        //}
        //print(menu1)
        //print(menu2)
        
        // ストリングが含まれているかどうか
        //let str1 = "吾輩は黒猫である。"
        //let str2 = "黒猫"
        //if str1.contains(str2){
        //    print("「\(str2)」が含まれています")
        //} else{
        //    print("「\(str2)」は含まれていません。")
        //}
        
        // 見つかった範囲の後ろを取り出す
        // ifとstrの組み合わせみたいな書き方できるんだね、この辺はscalaに近いかな。
        //let str = "東京都千代田区神雨1-2-3"
        //let result = str.range(of: "東京都")
        //if let theRange = result {
        //    let afterStr = str[theRange.upperBound...]
        //    print(afterStr)
        //} else {
        //    print(str)
        //}
        
        // 見つかった範囲の削除
        //var str = "東京都千代田区神南1-2-3"
        //let result = str.range(of: "東京都")
        //if let theRange = result {
        //    str.removeSubrange(theRange)
        //}
        //print(str)
       
        //// 配列を同じ値で初期化する
        //
        //let zeroList = [Double](repeating:0.0, count:10)
        //let xList = [String](repeating:"未設定", count:5)
        //
        //// 連番配列を作る
        //let numbers = [Int](-3...3)
        //print(numbers)
        //
        ////配列の連結
        //let basicCourse = ["ラン", "スイム"]
        //let fullCourse = basicCourse + ["バイク", "カヌー"]
        //print(basicCourse)
        //print(fullCourse)

        
        // 5-2配列から値を取り出す、スライスする
        //
        //let abcArray = ["a","b","c", "d"]
        //let str1 = abcArray[0]
        //let str2 = abcArray[2]
        //print(str1)
        //print(str2)
        //
        //
        //let colorList = ["blue", "yellow", "red", "green", "pink"]
        //let myColor = colorList[1...3]
        //print(myColor)
        //
        //let names = ["佐藤", "鈴木", "青木", "栗田", "篠原"]
        //let half = names.count/2
        //let group1 = names[..<half]
        //let group2 = names[half...]
        //print(group1)
        //print(group2)
        //
        //// 配列の中身を書き換える
        //var theArray = ["a","b","c","d","e","f","g","h","i"]
        //theArray[0] = "あ"
        //theArray[2] = "いう"
        //theArray[4...6] = ["赤","白", "黄色", "青", "緑"]
        //print(theArray)
        
        // 配列からインデックス番号と値を取り出す
        //let colorList = ["blue", "yellow", "red", "green"]
        //for (index, value) in colorList.enumerated(){
        //    print((index, value))
        //}
        
        // 最初の値と最後の値を取り出す
        // firstやlastの場合は未定義の場合もIndexエラーにならないみたい。これはこれで面白い。
        //let emptyArray = [Int]()
        //let abcArray = ["a","b","c","d"]
        //
        //if let item = emptyArray.first{
        //    print(item)
        //}
        //if let item = abcArray.last {
        //    print(item)
        //}
        //
        //// 配列の値を検索
        //let color = "yellow"
        //let colors = ["blue", "yellow", "pink"]
        //let indexNo = colors.index(of:color)
        //if indexNo == nil {
        //    print("\(color)は見つかりませんでした。")
        //}else{
        //    print("\(color)はインデックス番号\(indexNo!)にありました。")
        //}
        
        //var colors = ["red", "green"]
        //colors.append("yellow")
        //colors.append(contentsOf: ["black", "white"])
        //print(colors)
        //
        //// 配列の値を追加する
        //var aList = ["a", "b", "c", "d"]
        //aList.insert("XYZ", at: 2)
        //print(aList)
        //
        ////配列の値を削除する
        //var colorArray = ["red", "blue", "green", "black", "white"]
        //let delColor = colorArray.remove(at: 2)
        //print("\(delColor)を削除しました。\(colorArray)")
        //
        //// 配列から最初の値を削除する
        //
        //var colorArray = ["red", "blue", "green", "black", "white"]
        //let delColor = colorArray.removeFirst()
        //print("\(delColor)を削除しました。\(colorArray)")
        //colorArray.removeLast()
        //colorArray.removeAll()
        //
        //// Swiftで配列のコピーは実質ディープコピーとして扱われ、完全に別のオブジェクトとして扱われる。
        //// 内部的にはレイジーコピーと呼ばれ、変更が行われるまではシャローコピー、変更する瞬間にディープコピーを行う。多分パフォーマンスの問題なんだと思う。
        //var array1 = [1,2,3]
        //let array2 = array1
        //array1[0] = 99
        //print("array1 \(array1)")
        //print("array2 \(array2)")


        // 5-4: ソート、フィルタ、マップ
        
        //var ageArray = [34,23,31,26,28,22]
        //ageArray.sort()
        //print(ageArray)
        //
        //// ソート済みの配列を新規に作る
        //// .sortは中身を変更、sortedは新規に作成
        //let fruit = ["orange", "apple", "pineapple", "banana"]
        //let fruitSorted = fruit.sorted()
        //print(fruit)
        //print(fruitSorted)
        //
        //
        //// 値を条件抽出する
        //let age30to39 = ageArray.filter({(age:Int) -> Bool in
        //    return (age>=30)&&(age<40)
        //})
        //print(age30to39)
        //
        //// 値を使って演算する
        //let numbers = [10, 20, 30, 40]
        //let plusOnes = numbers.map({(num:Int) -> Int in
        //    return num + 1
        //})
        //print(plusOnes)
        //the
        
        // Section6-1
        // 辞書を作る
        
        //let sizeTable = ["S":47, "M":52, "L":55]
        //let numDic = [10:"a", 20:"b", 30:"c"]
        //let resultDic = ["A":true, "B":false, "C":true]
        //let pointDic = ["p1":(10,20), "p2":(30,50), "p3":(20,40)]
        
        // 値の型を指定した辞書
        //let sizeTable:[String:Int] = ["S":47, "M":52, "L": 55]
        //let resultDic:[String:Bool] = ["A":true, "B":false, "C":true]
        //let pointDic:[String:(Int,Int)] = ["p1":(10,20), "p2":(30,50), "p3":(20,40)]
        //var theUser:[String:Any]
        //theUser = ["名前":"青井", "年齢":29, "得点":[67,82]]
        
        //var pointDic:Dictionary<String, (Int,Int)>
        //pointDic = ["p1":(10,20), "p2":(30,50), "p3":(20,40)]
        
        
        //// 空の辞書
        ////var sizeTable: [String:Int] = [:]
        //var sizeTable = [String:Int]()
        //
        //// 辞書が空かどうかを調べる
        //if sizeTable.isEmpty{
        //   print("theDicは空の辞書")
        //} else{
        //   print(sizeTable)
        //}
        //
        //// タプルから辞書を作る
        //let a = ("A",1)
        //let b = ("B",2)
        //let c = ("C",1)
        //let abcDic = Dictionary(dictionaryLiteral: a,b,c)
        //print(abcDic)
        
        // updateValueで値の追加、更新を行う.
        
        // 辞書の複製
        // 辞書の値にアクセスする
        //var numbers = ["東京":15, "大阪": 12, "札幌": 9]
        //let tokyoValue = numbers["東京"]
        //let osakaValue = numbers["大阪"]
        //print(tokyoValue!, osakaValue!)
        //let tokyoosaka = tokyoValue! + osakaValue!
        //print("東京と大阪の合計: \(tokyoosaka)")
        //
        //// 辞書の複製
        //var dic1 = ["a":1, "b":2, "c":3]
        //let dic2 = dic1
        //dic1["b"] = 99
        //print("dic1は\(dic1)")
        //print("dic2は\(dic2)")
        //
        // 辞書から全ての要素を取り出す
        //let tokyometro = ["G":"銀座線", "M": "丸ノ内線", "H":"日比谷線", "T":"東西線", "C":"千代田線", "Z":"半蔵門線", "N":"南北線", "F":"副都心線"]
        //for rosen in tokyometro{
        //    print(rosen)
        //}
        //
        //for (rosenSign, rosenName) in tokyometro{
        //    print("\(rosenSign)は\(rosenName)です。")
        //}
        
        //var members = ["東京":15, "大阪":12, "札幌":9]
        //members["沖縄"] = 14
        //print(members)
        //
        //var theRace = ["short":20, "half":40, "full":85]
        //let theKey = "short"
        //if let result = theRace.removeValue(forKey: theKey){
        //    print("\(theKey)は削除しました。値は\(result)でした。")
        //} else {
        //    print("\(theKey)はありませんでした。")
        //}
        //print(theRace)
        //theRace["half"] = nil
        //print(theRace)
        //theRace.removeAll()
        //print(theRace)

        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

