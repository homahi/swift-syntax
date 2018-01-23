//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    
    var editingField:UITextField?
    var lastOffsetY :CGFloat = 0.0
    var overlap: CGFloat = 0.0

    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var myTextFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for fld in myTextFields{
            fld.delegate = self
        }
        
        // デフォルトの通知センターを得る
        let notification = NotificationCenter.default
        
        // キーボードのframeが変化した
        notification.addObserver(self,  selector: #selector(ViewController.keyboardChangeFrame(_:)), name: NSNotification.Name.UIKeyboardDidChangeFrame, object: nil)
        
        // キーボードが登場した
        notification.addObserver(self,  selector: #selector(ViewController.keyboardWillShow(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)


        // スクロールビューの領域を指定する
        let scrollFrame = CGRect(x: 0, y: 20, width: view.frame.width, height: view.frame.height-20)
        myScrollView.frame = scrollFrame
        // コンテンツのサイズを指定する
        let contentRect = contentView.bounds
        myScrollView.contentSize = CGSize (width:contentRect.width, height:contentRect.height)
        myScrollView.keyboardDismissMode = .onDrag
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func tapView(_ sender: Any) {
        view.endEditing(true)
    }
    // 編集開始のデリゲートメソッド
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // 編集中のテキストフィールド
        editingField = textField
    }
    
    @objc func keyboardChangeFrame(_ notification:Notification){
        // 編集中のテキストフィールドがない場合は中断する
        guard let fld = editingField else{
            return
        }
        // キーボードのframeを調べる
        let userInfo = (notification as NSNotification).userInfo!
        let keyboardFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        // テキストフィールドのframeをキーボードと同じ座標系にする
        let fldFrame = view.convert(fld.frame, from:contentView)
        // 編集中のテキストフィールドがキーボードと重なっていないか調べる
        overlap = fldFrame.maxY - keyboardFrame.minY + 5
        if overlap > 0{
            overlap += myScrollView.contentOffset.y
            myScrollView.setContentOffset(CGPoint(x: 0, y:overlap), animated: true)
        }
        
        
    }
    
    // 改行入力のデリゲートメソッド
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    
    // 編集終了のデリゲートメソッド
    func textFieldDidEndEditing(_ textField: UITextField) {
        editingField = nil
    }
    
    // キーボードが登場する通知を受けた
    @objc func keyboardWillShow(_ notification: Notification){
        // 現在のスクロール量を保存しておく
        lastOffsetY = myScrollView.contentOffset.y
    }
    
    // キーボードが退場した通知を受けた
    @objc func keyboardDidHide(_ notification: Notification){
        // スクロールを元に戻す
        myScrollView.setContentOffset(CGPoint(x:0, y: lastOffsetY), animated: true)
    }
}

