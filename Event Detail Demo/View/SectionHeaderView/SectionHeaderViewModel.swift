//
//  SectionHeaderViewModel.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 8/13/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import Foundation
import UIKit

class SectionHeaderViewModel {
    var isSelected : Bool = false
    var title : String?
    var index : Int = 0
    var tabIndicatorColor : UIColor?
    
    init(isSelected : Bool, title : String?, index : Int, tabIndicatorColor : UIColor?) {
        self.isSelected = isSelected
        self.title = title
        self.index = index
        self.tabIndicatorColor = tabIndicatorColor
    }
}


