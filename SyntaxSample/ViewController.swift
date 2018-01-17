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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let myObj = MyClass(msg:"こんにちは")
        // importとかしないでも呼び出せるらしい
        myObj.hello()
        
        let myObj2 = MyClass(msg: "こんにちは", name:"桜子")
        myObj2.hello()
        
        let obj3 = MyClass()
        obj3.hello()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

