//
//  CategoryListsView.swift
//  zanadu
//
//  Created by jiaxiaoyan on 16/5/18.
//  Copyright © 2016年 zanadu. All rights reserved.
//
import UIKit

 protocol CategoryListsViewDelegate {
      func didSelectCategoryListsRowCallBack(categorys : [SubCategory])

}

class CategoryListsView: UIView,UITableViewDelegate,UITableViewDataSource{
    enum viewType{
        case noTitleView,hasTitleView
    }


    private var cellIdentifer = "CategoryCatalogCell"
    var  sections = 1
    var  table = UITableView()
    var  currType: viewType = .noTitleView
    var  delegate : CategoryListsViewDelegate?
    var category : Category?
    var selectedCategoryArray  = [SubCategory]()
    var subCategoryArray  = [SubCategory]()
    
    var  cellHeight:CGFloat = 40

    internal   func  initWithType() {
        if currType == .noTitleView {
            table.frame = CGRectMake(0, 0, frame.size.width, frame.size.height)
        }else{
            let titleView = UILabel()
            titleView.backgroundColor = UIColor(bd_hexColor : "5a5f60")
            titleView.frame = CGRectMake(0, 0, frame.size.width, 40)
            titleView.text = "选择类型"
            titleView.textAlignment = .Center
            titleView.textColor = UIColor.whiteColor()
            self.addSubview(titleView)
            table.frame = CGRectMake(0, 33, frame.size.width, frame.size.height - 33)
        }
        self.addSubview(table)

        table.backgroundColor = UIColor.clearColor()
        self.backgroundColor = UIColor.clearColor()
        
        table.registerNib(UINib(nibName: "CategoryCatalogCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: cellIdentifer)
        table.separatorStyle = .None
        table.scrollEnabled = false
        
        //it is depend all your demand
        for i in 0...6{
            let name : String = "test" + String(i + 1)
            let category = SubCategory.init(name: name, status: "1")
            subCategoryArray.append(category)
        }
        table.delegate = self
        table.dataSource = self
    }
    
    func onCancelButtonTapped(sender : UIButton) {
        self.removeFromSuperview()
        selectedCategoryArray.removeAll()
    }
    
    func onConfirmButtonTapped(sender : UIButton) {
        self.removeFromSuperview()
        selectedCategoryArray.removeAll()
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return subCategoryArray.count
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if currType != .noTitleView {
            cellHeight = 50
        }
        return cellHeight
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifer, forIndexPath: indexPath) as! CategoryCatalogCell
        
                
        if currType == .noTitleView {
            cell.selectIconImgView.hidden = true
            cell.titleLabel.highlightedTextColor = Config.Colors.CateCellHightliedTextColor
        }else{
            cell.selectIconImgView.hidden = false
            cell.selectionStyle = .None
        }
        cell.configCellWithIndexPath(subCategoryArray, indexPath: indexPath)
        
        let index = indexPath.row

        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if currType == .noTitleView {
            tableView.deselectRowAtIndexPath(indexPath, animated: false)
        }
        let subCate = subCategoryArray[indexPath.row]
        subCate.isSelected = !subCate.isSelected!
        

        
        if subCate.isSelected! {
            
            self.selectedCategoryArray.append(subCate)
           
        }else{
            for (index, value) in selectedCategoryArray.enumerate(){
                if value.name == subCate.name {
                    self.selectedCategoryArray.removeAtIndex(index)
                }
            }
        }
        self.table.reloadData()

        if self.selectedCategoryArray.count <= 2 {
        }else{
            return
        }
        
        if let delegate = self.delegate {
            delegate.didSelectCategoryListsRowCallBack(self.selectedCategoryArray)
        }
    }

    func showAlert(tips : String) {
        
        let alert = UIAlertView.init(title: "提醒", message: tips, delegate: self, cancelButtonTitle: "取消")
        alert.show()
        
    }
    
}
