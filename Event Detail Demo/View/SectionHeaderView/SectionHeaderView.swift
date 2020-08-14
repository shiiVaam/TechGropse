//
//  SectionHeaderView.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 8/13/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit

protocol SectionHeaderViewDelegate {
    func updateData(dataList : [SectionHeaderViewModel], section: Int, selectedTabIndex: Int)
}

class SectionHeaderView: UITableViewHeaderFooterView {

    @IBOutlet weak var carouselCv: UICollectionView!

    
    private var dataModel = [SectionHeaderCellModel]()
    private var cellModel : [SectionHeaderViewModel]?
    private var delegate : SectionHeaderViewDelegate?
    
    var section : Int = 0
    
    func setData(_ model : Any?) {
        guard let detailList = model as? [SectionHeaderViewModel] else { return }
        self.cellModel = detailList
        
        setUpCv()
        dataModel.removeAll()
        
        for detail in detailList {
            dataModel.append(SectionHeaderCellModel(title: detail.title, isSelected: detail.isSelected, tabIndicatorColor: detail.tabIndicatorColor))
        }
        
        self.carouselCv.reloadData()
    }
    
    func setDelegateHandler(_ handler : Any) {
        self.delegate = handler as? SectionHeaderViewDelegate
    }
    
    func setUpCv() {
        self.carouselCv.delegate = self
        self.carouselCv.dataSource = self
        self.carouselCv.showsHorizontalScrollIndicator = false
        self.carouselCv.isPagingEnabled = false
            
        self.carouselCv.register(UINib.init(nibName: "SectionHeaderCell", bundle: nil), forCellWithReuseIdentifier: "SectionHeaderCell")
            
        configureCollectionViewLayout()
    }
        
    func configureCollectionViewLayout() {
//        (self.carouselCv.collectionViewLayout as? UICollectionViewFlowLayout)?.estimatedItemSize = CGSize(width: AppUtils.scaleValue(48), height: AppUtils.scaleValue(40))
    }
}

extension SectionHeaderView : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return dataModel.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      if indexPath.row < dataModel.count {
          let model = dataModel[indexPath.row]
      
          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SectionHeaderCell", for: indexPath) as! SectionHeaderCell
          cell.setCellData(data: model)
          return cell
      }
      
      return UICollectionViewCell()
  }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellsAcross: CGFloat = CGFloat(dataModel.count)
        let spaceBetweenCells: CGFloat = 1
        let dim = (collectionView.bounds.width - (cellsAcross - 1) * spaceBetweenCells) / cellsAcross
        return CGSize(width: dim, height: self.frame.size.height)
    }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
      return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
      return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    if indexPath.row < dataModel.count, let model = dataModel[indexPath.row] as? SectionHeaderCellModel {
        model.isSelected = true
        
        var index = 0
        for data in dataModel {
            if index != indexPath.row, let sectionHeaderCellModel = data as? SectionHeaderCellModel  {
                sectionHeaderCellModel.isSelected = false
            }
            index += 1
        }
        
        if let cellModelList = self.cellModel {
            for cellModel in cellModelList {
                if cellModel.index == indexPath.row {
                    cellModel.isSelected = true
                } else {
                    cellModel.isSelected = false
                }
            }
            
            delegate?.updateData(dataList: cellModelList, section: section, selectedTabIndex: indexPath.row)
        }
        
        collectionView.reloadData()
    }
    
  }
}
