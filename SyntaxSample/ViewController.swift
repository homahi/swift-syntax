//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate  {
    
    @IBAction func showActionSheet(_ sender: Any) {
        // アクションシートを作る
        let actionSheet = UIAlertController(
            title: "タイトル",
            message: "メッセージ文",
            preferredStyle: .actionSheet
        )
        
        // ボタン1
        actionSheet.addAction(
            UIAlertAction(
                title:"ボタン1です",
                style: .default,
                handler: {(action) -> Void in
                    self.hello(action.title!)
            })
        )
        
        // ボタン2
        actionSheet.addAction(UIAlertAction(title: "ボタン2です", style: .default, handler: {(action) -> Void in
            self.hello(action.title!)
        }))
        
        // キャンセル(追加順にかかわらず最後に表示される
        actionSheet.addAction(UIAlertAction(title:"キャンセル",style:.cancel, handler: nil))
        
        // 赤色のボタン
        actionSheet.addAction(
        UIAlertAction(title: "削除します", style: .destructive, handler: {(action) -> Void in
            self.hello(action.title!)
        }))
        
        // アクションシートを表示する
        self.present(actionSheet,animated:true, completion:{
            print("アクションシートが表示された。")
        })
    }
    
    func hello(_ msg:String){
        print(msg)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

