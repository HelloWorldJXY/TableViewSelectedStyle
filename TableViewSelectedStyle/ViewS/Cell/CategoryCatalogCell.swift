//
//  CategoryCatalogCell.swift
//  zanadu
//
//  Created by jiaxiaoyan on 16/3/15.
//  Copyright © 2016年 zanadu. All rights reserved.
//

import UIKit

class CategoryCatalogCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bottomLineHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var selectIconImgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func layoutSubviews() {
        self.backgroundColor = Config.Colors.CateCellBackgroudColor
        titleLabel.textColor = Config.Colors.CateCellTextColor
          bottomLineHeightConstraint.constant = 0.5

        }
    func labelTapTapped(){
        titleLabel.textColor = Config.Colors.CateCellHighliedTextColor
    }
    func configCellWithIndexPath(array: [SubCategory] , indexPath : NSIndexPath) -> CategoryCatalogCell {
        let imageNameArray = ["icon_bar","icon_bar","icon_bar","icon_bar","icon_bar","icon_bar","icon_bar"]
        let index = indexPath.row
        let category = array[index]

        titleLabel.text = category.name
        categoryImage.image = UIImage(named: imageNameArray[index])
        
        var  selectImageName = ""
        if category.isSelected! {
            selectImageName = "selected"
        }else{
            selectImageName = "normal"

        }
        selectIconImgView.image = UIImage(named: selectImageName)

        return self
    }
}
