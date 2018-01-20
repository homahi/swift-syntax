//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    
    @IBOutlet weak var colorChip: UIView!
    @IBAction func changedColor(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            colorChip.backgroundColor = UIColor.blue
        case 1:
            colorChip.backgroundColor = UIColor.yellow
        case 2:
            colorChip.backgroundColor = UIColor.green
        default:
            colorChip.backgroundColor = UIColor.blue
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

