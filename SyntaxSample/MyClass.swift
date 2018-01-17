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
