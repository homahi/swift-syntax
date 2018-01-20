//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    

    @objc func hello (_ sender: UIButton){
        print("ハロー")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myButton = UIButton(type:.custom)
        myButton.frame = CGRect(x:50, y: 100, width: 120, height:50)
        
        let image1 = UIImage(named: "homahi")
        let image2 = UIImage(named: "homahi")
        myButton.setImage(image1, for: .normal)
        myButton.setImage(image2, for: .highlighted)
        
        myButton.setTitle("Hello", for: .normal)
        myButton.setTitleColor(UIColor.black, for: .normal)
        myButton.addTarget(self, action: #selector(ViewController.hello(_:)), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(myButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

