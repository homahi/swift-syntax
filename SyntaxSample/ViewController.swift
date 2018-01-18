//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct Goods {
        let tanka: Int
        let kosu: Int
        
        var price:Int{
            return tanka * kosu
        }
        
        func sellprice(nebiki: Int = 0) -> Int{
            return price - nebiki * kosu
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myGoods = Goods(tanka:700, kosu: 4)
        let selling_price = myGoods.sellprice(nebiki: 10)
        
        print("一個\(myGoods.tanka)円、\(myGoods.kosu)個入り、定価\(myGoods.price)円")
        print("販売価格\(selling_price)円")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

