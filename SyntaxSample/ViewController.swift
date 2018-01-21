//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var myPhoto: UIImageView!
    
    @IBAction func changedFrame(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        switch index {
        case 0 : // 小さく表示
            myPhoto.frame = CGRect(x: 50, y: 120, width: 160, height: 120)
        case 1: // 大きく表示
            myPhoto.frame = CGRect(x: 30, y: 120, width: 256, height: 192)
            default:
            myPhoto.frame = CGRect(x: 30, y: 120, width: 256, height: 192)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPhoto.contentMode = .scaleAspectFill
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

