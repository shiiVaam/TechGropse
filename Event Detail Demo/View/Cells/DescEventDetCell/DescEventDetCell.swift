//
//  DescEventDetCell.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 12/08/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit

class DescEventDetCell: UITableViewCell {

    @IBOutlet weak var lblEvDesc: UILabel!
    
    func configureCell(data: Data?) {
        lblEvDesc.text = data?.ev_description ?? ""
    }

}
