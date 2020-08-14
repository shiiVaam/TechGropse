//
//  BasicEventDetCell.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 12/08/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit

class BasicEventDetCell: UITableViewCell {
    
    
    @IBOutlet weak var lblEvDate: UILabel!
    
    @IBOutlet weak var lblEvTime: UILabel!
    
    @IBOutlet weak var lblEvLanguage: UILabel!
    
    @IBOutlet weak var lblEvGender: UILabel!
    
    @IBOutlet weak var lblEvAge: UILabel!
    
    func configureCell(data: Data?) {
        let startDate = dateConvert(data?.ev_start_date ?? "")
        let endDate = dateConvert(data?.ev_end_date ?? "")
        lblEvDate.text = "\(startDate) - \(endDate)"
        
        let startTime = timeConvert(data?.ev_start_time ?? "")
        let endTime = timeConvert(data?.ev_end_time ?? "")
        lblEvTime.text = "\(startTime) - \(endTime)"
        lblEvLanguage.text = data?.ev_language == "0" ? "Arabic" : "Arabic & Urdu"
        lblEvGender.text = data?.ev_gender == "0" ? "Men" : "Men & Women"
        lblEvAge.text = "Above \(data?.ev_age_id ?? "") Years"
    }

    func dateConvert(_ date: String) -> String {
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        let date: Date? = dateFormatterGet.date(from: date)
        return dateFormatter.string(from: date!)
    }

    func timeConvert(_ time: String) -> String {
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "HH:mm:ss"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        let date: Date? = dateFormatterGet.date(from: time)
        return dateFormatter.string(from: date!)
    }
    
}
