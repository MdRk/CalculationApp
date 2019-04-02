//
//  HomeViewController.swift
//  Calculation
//
//  Created by 前田陸 on 2019/04/01.
//  Copyright © 2019 陸　前田. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupScrollView()
        // Do any additional setup after loading the view.
    }
    
    func setupScrollView() {
        let scWidth = self.scrollView.frame.size.width
        let scHeight = self.scrollView.frame.size.height
        
        // scrollViewのサイズを指定（幅は１メニューに表示するViewの幅×ページ数）
        scrollView.contentSize = CGSize(width: scWidth*7, height: self.view.frame.size.height/4)
        // 隣のviewを見えるようにする
        scrollView.clipsToBounds = false
        // scrollViewのデリゲートになる
        scrollView.delegate = self
        // メニュー単位のスクロールを可能にする
        scrollView.isPagingEnabled = true
        // 水平方向のスクロールインジケータを非表示にする
        scrollView.showsHorizontalScrollIndicator = false
        
        /// viewの仮置き
        var randomColor: UIColor {
            let r = CGFloat.random(in: 0 ... 255) / 255.0
            let g = CGFloat.random(in: 0 ... 255) / 255.0
            let b = CGFloat.random(in: 0 ... 255) / 255.0
            return UIColor(red: r, green: g, blue: b, alpha: 1.0)
        }
        
        var views = [UIView](repeating: UIView(), count: 7)
        
        for i in 0...6 {
            views[i] = UIView(frame: CGRect(x: 5+(scWidth)*CGFloat(i),
                                            y: 0,
                                            width: scWidth-10,
                                            height: scHeight))
            views[i].backgroundColor = randomColor
            scrollView.addSubview(views[i])
        }
        ///
        
        // pageControlのページ数を設定
        pageControl.numberOfPages = views.count
        // pageControlのドットの色
        pageControl.pageIndicatorTintColor = UIColor.lightGray
        // pageControlの現在のページのドットの色
        pageControl.currentPageIndicatorTintColor = UIColor.black
    }
}

extension HomeViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
        print(pageControl.currentPage)
    }
}
