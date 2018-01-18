//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Ticket{
        case Gold, A, B
        
        static var name = "入場券"
        
        var area: String{
            get {
                switch self{
                case .Gold:
                    return "ゴールド席"
                case .A:
                    return "A席"
                case .B:
                    return "B席"
                }
            }
        }
        
        var price:Int{
            get{
                switch self{
                case .Gold:
                    return 24000
                case .A:
                    return 5000
                case .B:
                    return 2000
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Ticket.name = "超ライブ入場券"
        
        let ticket1 = Ticket.A
        let ticket2 = Ticket.Gold
        
        print(Ticket.name, ticket1.area, ticket1.price)
        print(Ticket.name, ticket2.area, ticket2.price)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

