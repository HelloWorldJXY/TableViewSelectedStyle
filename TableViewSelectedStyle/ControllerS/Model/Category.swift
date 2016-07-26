//
//  Category.swift
//  zanadu
//
//  Created by jiaxiaoyan on 16/5/19.
//  Copyright © 2016年 zanadu. All rights reserved.
//
import UIKit

class Category{
    // MARK: - Variables
    var name: String!
    var status : String!
    
}

class SubCategory: Category {
    var isSelected : Bool?

       init(name: String, status: String) {
        super.init()
        self.name = name
        self.status = status
        self.isSelected = false
//        log.debug("\(self.name)")
    }

}
