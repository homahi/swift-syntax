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
    init(msg:String = "ハロー"){
        self.msg = msg
        self.name = nil
    }
    
    init(msg:String = "ハロー", name:String){
        self.msg = msg
        self.name = name
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
