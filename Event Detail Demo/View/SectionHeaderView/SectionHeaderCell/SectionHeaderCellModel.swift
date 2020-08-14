//
//  SectionHeaderCellModel.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 8/13/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit

class SectionHeaderCellModel  {
    var isSelected : Bool = false
    var tabIndicatorColor : UIColor?
    var title:String?

    init(title : String?, isSelected : Bool = false, tabIndicatorColor : UIColor?) {
//        super.init()
        self.title = title
        self.isSelected = isSelected
        self.tabIndicatorColor = tabIndicatorColor
    }

}
