//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    

    @IBAction func gotoTreePage(_ sender: Any) {
        // 移動さきのビューコントローラを参照する
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "treePage")
        // トランジションの映像効果を指定する
        nextVC?.modalTransitionStyle = .flipHorizontal
        // シーンを移動する
        present(nextVC!, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

