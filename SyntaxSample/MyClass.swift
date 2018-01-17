//
//  MyClass.swift
//  SyntaxSample
//
//  Created by 原野誉大 on 2018/01/16.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import Foundation

class MyClass {

    let msg :String
    let name:String?
    
    //初期値を入力することもできるらしい
    init(msg:String ,name: String){
        self.msg = msg
        self.name = name
    }
    
    // 別のコンストラクタを呼び出すようなコンストラクタは前にconvenienceをつけるらしい。
    convenience init (msg: String = "ハロー"){
        self.init(msg:msg,name:"匿名")
    }

    func hello(){
        var helloMsg: String
        if let user = name{
            helloMsg = user + "さん。" + msg
        } else{
            helloMsg = msg
        }
        print(helloMsg)
    }
}

class Circle{
    var radius: Double = 1.0
    var area: Double {
        return radius * radius * Double.pi
    }
    
}

class Player {
    var times = 0
    var level:Int {
        willSet{
            print("-------------")
            print("willSet \(newValue)")
        }
        didSet{
            if oldValue != level{
                times += 1
                print("\(times)回目の更新")
                print("\(oldValue) -> \(level)")
            } else{
                print("値は変化なし")
            }
        }
    }
    
    init(){
        level = 0
    }
}

class Car{
    static var count = 0
    
    var moving = false
    
    func start(){
        Car.count += 1
        moving = true
    }
    
    func stop(){
        if Car.count > 0{
            Car.count -= 1
            moving = false
        }
    }
}
