//
//  TableViewCell.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 8/13/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit

class TopImageTableCell: UITableViewCell {

    @IBOutlet weak var lblEventCategory: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblView: UILabel!
    @IBOutlet weak var lblLike: UILabel!
    @IBOutlet weak var lblGroup: UILabel!
    @IBOutlet weak var lblDist: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var constLblEventCat: NSLayoutConstraint!
    @IBOutlet weak var colViewImg: UICollectionView!{
        didSet{
            colViewImg.delegate = self
                     colViewImg.dataSource = self
                     colViewImg.register(UINib(nibName: "topImgColViewCell", bundle: nil), forCellWithReuseIdentifier: "topImgColViewCell")
        }
    }
    var dataImg:Data?
    
    
    func configureCell(data: Data?) {
        lblView.text = data?.ev_views
        lblLike.text = data?.ev_like
        let dist : Float = Float((Int(data?.distance ?? "0") ?? 0)/1000)
        lblDist.text = "\(dist) km"
        lblTitle.text = data?.ev_title
        lblDesc.text = data?.ev_event_type_name
        lblEventCategory.text = data?.category_name
        
        lblEventCategory.transform = CGAffineTransform( rotationAngle: CGFloat(Double.pi/2))
              constLblEventCat.constant = lblEventCategory.frame.width + 10
        
        dataImg = data
    }
    
}
extension TopImageTableCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataImg?.ev_image?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "topImgColViewCell", for: indexPath) as! TopImgColViewCell
        
        cell.imgTopCell.sd_setImage(with: URL(string: dataImg?.ev_image?[indexPath.row].image ?? ""), completed: nil)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:collectionView.frame.size.width , height: collectionView.frame.size.height)
    }

}
