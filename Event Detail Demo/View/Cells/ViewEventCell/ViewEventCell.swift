//
//  ViewEventCell.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 12/08/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit
import SDWebImage

//protocol needed on tap collection cells

//protocol collectionCellTapped:class {
//    func tappedIndex(index:String)
//}

enum ViewEventType {
    case organizer
    case sponser
    case performer
}

class ViewEventCell: UITableViewCell {

    @IBOutlet weak var lblEvView: UILabel!
    @IBOutlet weak var btnExpand: UIButton!
    @IBOutlet weak var colViewEvView: UICollectionView!{
        didSet{
            colViewEvView.delegate = self
            colViewEvView.dataSource = self
            colViewEvView.register(UINib(nibName: "ViewEventCollectionVC", bundle: nil), forCellWithReuseIdentifier: "ViewEventCollectionVC")
        }
    }
    var dataTbl:Data?
    var organizerModel = [Event_organizer]()
    var sponserModel = [Event_sponser]()
    var performerModel = [Event_performer]()
    
    var viewEventEnum: ViewEventType = .organizer
    
    func configureOrganizer(data: [Event_organizer]?, type: ViewEventType) {
        guard let tempData = data else { return }
        viewEventEnum = type
        organizerModel = tempData
        colViewEvView.reloadData()
    }
    
    func configureSponser(data: [Event_sponser]?, type: ViewEventType) {
        guard let tempData = data else { return }
        viewEventEnum = type
        sponserModel = tempData
        colViewEvView.reloadData()
    }
    func configurePerformer(data: [Event_performer]?, type: ViewEventType) {
        guard let tempData = data else { return }
        viewEventEnum = type
        performerModel = tempData
        colViewEvView.reloadData()
    }
}
extension ViewEventCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch viewEventEnum {
            case .organizer:
                return organizerModel.count
            case .sponser:
                return sponserModel.count
            case .performer:
                return performerModel.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewEventCollectionVC", for: indexPath) as! ViewEventCollectionVC
        
        cell.imgViewEvView?.image = nil
        cell.lblDetailImg.text = ""
        switch viewEventEnum {
            case .organizer:
                cell.imgViewEvView?.sd_setImage(with: URL(string: organizerModel[indexPath.row].o_logo ?? ""), completed: nil)
                cell.lblDetailImg.text = organizerModel[indexPath.row].o_name
            case .sponser:
                cell.imgViewEvView?.sd_setImage(with: URL(string: sponserModel[indexPath.row].s_logo ?? ""), completed: nil)
                cell.lblDetailImg.text = sponserModel[indexPath.row].s_name
            case .performer:
                cell.imgViewEvView?.sd_setImage(with: URL(string: performerModel[indexPath.row].p_logo ?? ""), completed: nil)
                cell.lblDetailImg.text = performerModel[indexPath.row].p_name

        }
            
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.section)
        print(indexPath.item)
        print(indexPath.row)
    }
    
}
