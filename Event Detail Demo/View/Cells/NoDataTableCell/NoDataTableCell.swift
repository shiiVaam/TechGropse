//
//  NoDataTableCell.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 8/14/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit

class NoDataTableCell: UITableViewCell {
    @IBOutlet weak var lblNoData: UILabel!
    
    func configureCell(str: String?) {
        lblNoData.text = str
    }
    
}
