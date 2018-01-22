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

        // サブビューを作る
        let subView = createContentView(contentList: photoList)
        // スクロールビューにサブビューを追加する
        scrollView.addSubview(subView)
        // スクロールビューの設定
        scrollView.isPagingEnabled = true // ページ送りする
        scrollView.contentSize = subView.frame.size //コンテンツサイズ
        scrollView.contentOffset = CGPoint(x:0, y:0)
        
        // ページコントロールを設定する
        pageControl.numberOfPages = photoList.count
        pageControl.currentPage = 0
        // ページコントロールのドットの色
        pageControl.pageIndicatorTintColor = UIColor.lightGray
        pageControl.currentPageIndicatorTintColor = UIColor.black
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
    
    func createContentView(contentList:Array<Photo>) -> UIView {
        // ページを追加するコンテンツビューを作る
        let contentView = UIView()
        // 1ページの幅と高さ(幅はデバイスで変化するのでviewに合わせる)
        let pageWidth = self.view.frame.width
        let pageHeight = scrollView.frame.height
        let pageViewRect = CGRect(x:0, y:0, width:pageWidth, height:pageHeight)
        // 写真の縦横サイズ(正方形)
        let photoSize = CGSize(width:250, height:250)
        // ページを並べたコンテンツビュー全体のサイズ
        contentView.frame = CGRect(x:0, y:0, width:pageWidth*4, height:pageHeight)
        // ページの背景色
        let colors: Array<UIColor> = [.cyan, .yellow, .lightGray, .orange]
        // 写真コンテンツのページを作ってサブビューに追加する
        for i in 0..<contentList.count{
            // 写真のファイル名とタイトルを順に取り出す
            let contentItem = contentList[i]
            // ページのビューを作る
            let pageView = createPage(viewRect: pageViewRect, imageSize: photoSize, item: contentItem)
            let left = pageViewRect.width * CGFloat(i)
            let xy = CGPoint(x: left, y: 0)
            pageView.frame = CGRect(origin: xy, size: pageViewRect.size)
            pageView.backgroundColor = colors[i]
            // コンテンツビューにページビューを並べて追加していく
            contentView.addSubview(pageView)
        }
        return contentView
    }
}

