//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
protocol Monster{
    var monsterName: String {get}
    var hp:Int {get set}
    mutating func updateHP(pt:Int)
}
struct Bokemon:Monster{
    private(set) var monsterName: String
    var hp:Int
    mutating func updateHP(pt:Int){
        hp += pt
    }
}
class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var aMonster = Bokemon(monsterName: "スイフィー", hp:200)
        print(aMonster.monsterName)
        print("HPポイント \(aMonster.hp)")
        aMonster.updateHP(pt:30)
        print("HPポイント \(aMonster.hp)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

