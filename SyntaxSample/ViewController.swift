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
    
    let thePath = NSHomeDirectory() + "/Documents/myTextfile.txt"
    // テキストビューのframe
    var originalFrame: CGRect?
    // テキストビューとOutlet接続する
    @IBOutlet weak var myTextView: UITextView!
    @IBAction func cancel(_ sender: Any) {
        view.endEditing(true)
        readFromFile()
    }
    @IBAction func saveToFile(_ sender: Any) {
        // キーボードを下げる
        view.endEditing(true)
        // 保存するテキストデータ
        let textData = myTextView.text
        // テキストデータの保存をトライする
        do{
            try textData?.write(toFile: thePath, atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError{
            print("保存に失敗。 \n \(error)")
        }
    }
    
    func readFromFile(){
        do{
            let textData = try String(contentsOfFile: thePath, encoding: String.Encoding.utf8)
            myTextView.text = textData
        } catch let error as NSError{
            print("読み込みに失敗。 \n \(error)")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        originalFrame = myTextView.frame
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        readFromFile()
        
        let notification = NotificationCenter.default
        
        notification.addObserver(self, selector: #selector(ViewController.keyboardDidShow(_:)), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
        
        // キーボードのframeが変更された
        notification.addObserver(self, selector: #selector(ViewController.keyboardChangeFrame(_:)), name: NSNotification.Name.UIKeyboardDidChangeFrame, object: nil)
        
        // キーボードが退場した
        notification.addObserver(self, selector: #selector(ViewController.keyboardDidHide(_:)), name: NSNotification.Name.UIKeyboardDidHide, object: nil)
    }
    
    @objc func keyboardDidShow(_ notification: Notification){
        
    }
    
    @objc func keyboardChangeFrame(_ notification: Notification){
        let userInfo = (notification as NSNotification).userInfo!
        let keyboardFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        
        // キーボードで隠れないようにテキストビューの高さを変更する
        var textViewFrame = myTextView.frame
        textViewFrame.size.height = keyboardFrame.minY - textViewFrame.minY - 5
        myTextView.frame = textViewFrame
    }
    
    @objc func keyboardDidHide(_ notificaiton: Notification){
        myTextView.frame = originalFrame!
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

