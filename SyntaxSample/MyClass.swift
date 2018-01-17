//
//  MyClass.swift
//  SyntaxSample
//
//  Created by 原野誉大 on 2018/01/16.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import Foundation

internal class MyClass {
    static var radian:Double = 0.0
    
    class var degree:Double{
        get{
            let dosu = radian * 90 / Double.pi
            return dosu
        }
        
        set(dosu){
            radian = dosu * Double.pi / 90
        }
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

class Message{
    class func hello() -> String {
        return "こんにちは"
    }
}

class Game{
    fileprivate var point = 0.0
    
    fileprivate(set) var level = 0
    
    func addPoint(value:Double){
        point += value
        level = Int(floor(point/3))
    }
}
