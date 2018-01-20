//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    @objc func ok(_ sender:UIButton){
        print("OK")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let okButton = UIButton()
        okButton.frame = CGRect(x:100, y:100, width: 120, height:120)
        
        let bkgImage = UIImage(named: "bmPJTvnn_400x400 (2)")
        okButton.setBackgroundImage(bkgImage, for: .normal)
        
        okButton.setTitle("OK", for: .normal)
        okButton.setTitleColor(.black, for: .normal)
        okButton.addTarget(self, action: #selector(ViewController.ok(_:)), for: UIControlEvents.touchUpInside)
        view.addSubview(okButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

