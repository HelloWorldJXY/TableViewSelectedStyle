# TableViewSelectedStyle
Init table
        let listView = CategoryListsView()
        listView.frame = CGRectMake(0, 20, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height)
        listView.currType = .hasTitleView
        listView.initWithType()
        listView.delegate = self
        listView.backgroundColor = UIColor.whiteColor()
        view.addSubview(listView)
        
  add confirm to protocol 
      func didSelectCategoryListsRowCallBack(categorys : [SubCategory])
  source model 
      SubCategory is only need in my project ,you had better create one depend on your demands

