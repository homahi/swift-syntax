//
//  MyClass.swift
//  SyntaxSample
//
//  Created by 原野誉大 on 2018/01/16.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import Foundation


class Circle{
    var radius: Double = 1.0
    var area: Double {
        return radius * radius * Double.pi
    }
    
}

class Player {
    var name: String = ""
    
    func hello(){
        print("やあ!" + name)
    }
}

extension Player{
    var who:String{
        get{
            return name
        }
        set(value){
            name = value
        }
    }
    
    func bye(){
        print("またね!" + name)
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

class MyGame:GameProtocol{
    private var total = 0
    
    var gamePoint:Int{
        get{
            return total
        }
    }
    
    func hit(){
        total += 10
        print("ヒットしました。 +10")
    }
    
    func miss(){
        total /= 2
        print("ミスった!半減")
    }
}

enum Direction: Int {
    case forward = 1
    case backword
    case right
    case left
}

enum Pattern {
    case Monotone(_:PColor)
    case Border(color1: PColor, color2:PColor)
    case Dots(base:PColor, dot1:PColor, dot2:PColor)
}

enum PColor: String{
    case red = "赤"
    case green = "緑"
    case yellow = "黄"
    case white = "白"
}

struct ColorBox{
    var width: Int
    var height: Int
    var color:String
}

struct WhiteBox{
    var width :Int = 100
    var height :Int = 100
    let color: String = "whtite"
}
