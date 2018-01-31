//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController  {
    
    
    @IBOutlet weak var webView: WKWebView!
    
    var data:(name:String, url:String)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // dataが設定されていればwebDataに代入する
        guard let webData = data else {
            return
        }
        
        // 表示するWebページのURLRequestを作る
        let myURL = URL(string: webData.url)
        let myRequest = URLRequest(url: myURL!)
        // Webを読み込む
        webView.load(myRequest)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

