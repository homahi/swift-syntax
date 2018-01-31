//
//  MyTabBarController.swift
//  SyntaxSample
//
//  Created by 原野誉大 on 2018/01/31.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    

    func hello(_ msg:String){
        print(msg)
    }
    // タブバーが切り替わると実行される
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        // Thirdタブだった時バッジを消す
        if item.title == "Third"{
            item.badgeValue = nil
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // 3番目のタブにバッジ"New"をつける
        let tabBarItem = tabBar.items?[1]
        tabBarItem?.badgeValue = "New"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
