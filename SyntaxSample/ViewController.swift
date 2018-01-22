//
//  ViewController.swift
//  SyntaxSample/Users/homahi/workspace/SyntaxSample/SyntaxSample/MyClass.swift
//
//  Created by 原野誉大 on 2018/01/11.
//  Copyright © 2018年 原野誉大. All rights reserved.
//

import UIKit

struct Photo{
    var imageName:String
    var title:String
}

let photoList = [
    Photo(imageName:"homahi", title:"映画は中劇"),
    Photo(imageName:"homahi", title:"札幌は時計台"),
    Photo(imageName:"homahi", title:"蓮の花"),
    Photo(imageName:"homahi", title:"夏の垣根"),
]

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createPage(viewRect:CGRect, imageSize: CGSize, item:Photo) -> UIView{
        let pageView = UIView(frame:viewRect)
        let photoView = UIImageView()
        let left = (pageView.frame.width - imageSize.width)/2
        photoView.frame = CGRect(x:left, y:10, width:imageSize.width, height:imageSize.height)
        photoView.contentMode = .scaleAspectFill
        photoView.image = UIImage(named: item.imageName)
        // ラベルを作って写真タイトルを設定する
        let titleFrame = CGRect(x:left, y:photoView.frame.maxY+10, width:200, height:21)
        let titleLabel = UILabel(frame: titleFrame)
        titleLabel.text = item.title
        // 写真とタイトルとページビューに追加する
        pageView.addSubview(photoView)
        pageView.addSubview(titleLabel)
        return pageView
    }
}

