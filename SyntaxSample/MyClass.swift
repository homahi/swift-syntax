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

class Game{
    fileprivate var point = 0.0
    
    fileprivate(set) var level = 0
    
    func addPoint(value:Double){
        point += value
        level = Int(floor(point/3))
    }
}
