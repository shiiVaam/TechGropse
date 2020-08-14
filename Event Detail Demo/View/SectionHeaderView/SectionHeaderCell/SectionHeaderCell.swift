//
//  SectionHeaderCell.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 8/13/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit

class SectionHeaderCell: UICollectionViewCell {

    @IBOutlet weak var separatorViewHeight: NSLayoutConstraint!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var separatorView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
     func setCellData(data: Any?) {
        guard let model = data as? SectionHeaderCellModel else { return }
        titleLabel.text = model.title
        separatorView.backgroundColor = model.tabIndicatorColor
        
        if model.isSelected {
            self.separatorViewHeight.constant = 4
            titleLabel.font = UIFont.boldSystemFont(ofSize: 13)
            titleLabel.textColor = UIColor.black
        } else {
            self.separatorViewHeight.constant = 0
            titleLabel.font = UIFont.systemFont(ofSize: 13)
            titleLabel.textColor = UIColor.darkGray
        }
    }
}
