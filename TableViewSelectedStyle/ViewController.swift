//
//  ViewController.swift
//  TableViewSelectedStyle
//
//  Created by jiaxiaoyan on 16/7/26.
//  Copyright © 2016年 jiaxiaoyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,CategoryListsViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setTableView()
    }

    func setTableView() {
        let listView = CategoryListsView()
        listView.frame = CGRectMake(0, 20, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height)
        listView.currType = .hasTitleView
        listView.initWithType()
        listView.delegate = self
        listView.backgroundColor = UIColor.whiteColor()
        view.addSubview(listView)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func didSelectCategoryListsRowCallBack(categorys : [SubCategory])
    {
    }

}

