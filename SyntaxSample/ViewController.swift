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
    
    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title:nil, message: nil, preferredStyle: .alert)
        alert.title = "タイトル"
        alert.message = "メッセージ"
        alert.addAction(
            UIAlertAction(title: "ボタン1です", style: .default, handler: {(action)->Void in
                self.hello(action.title!)
            }))
        alert.addAction(
            UIAlertAction(title: "ボタン2です", style: .default, handler: {(action)->Void in
                self.hello(action.title!)
            }))
        alert.addAction(
            UIAlertAction(title: "キャンセル", style: .cancel, handler: nil))
        alert.addAction(
            UIAlertAction(title: "削除します", style: .destructive, handler: {(action)->Void in
                self.hello(action.title!)
            }))

        alert.addTextField{(textField) -> Void in
            textField.delegate = self
            
        }
        
        self.present(alert, animated: true, completion: {print("アラートが表示された")})
    }
    
    func hello(_ msg: String){
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(textField.text ?? "")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

