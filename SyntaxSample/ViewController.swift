//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    

    @IBOutlet weak var homahi: UIImageView!
    
    @IBAction func rotateTombo(_ sender: UIRotationGestureRecognizer) {
        switch sender.state{
        case .began:
            sender.rotation = lastRotation
        case .changed:
            // 回転角度にトンボを合わせる
            homahi.transform = CGAffineTransform(rotationAngle: sender.rotation)
        case .ended:
            lastRotation = sender.rotation
        default:
            break
        }
    }
    var lastRotation: CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

