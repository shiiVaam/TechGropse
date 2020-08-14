//
//  ViewController.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 12/08/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit
import SVProgressHUD


class EventDetailVC: UIViewController {

    @IBOutlet weak var lblNoData: UILabel!
    @IBOutlet weak var tblEvent: UITableView!{
        didSet{
            tblEvent.register(UINib.init(nibName: "TopImageTableCell", bundle: nil), forCellReuseIdentifier: "TopImageTableCell")
            let headerNib = UINib.init(nibName: "SectionHeaderView", bundle: Bundle.main)
            tblEvent.register(headerNib, forHeaderFooterViewReuseIdentifier: "SectionHeaderView")
            tblEvent.register(UINib.init(nibName: "BasicEventDetCell", bundle: nil), forCellReuseIdentifier: "BasicEventDetCell")
            tblEvent.register(UINib.init(nibName: "EventLocationCell", bundle: nil), forCellReuseIdentifier: "EventLocationCell")
            tblEvent.register(UINib.init(nibName: "DescEventDetCell", bundle: nil), forCellReuseIdentifier: "DescEventDetCell")
            tblEvent.register(UINib.init(nibName: "ViewEventCell", bundle: nil), forCellReuseIdentifier: "ViewEventCell")
            tblEvent.register(UINib.init(nibName: "NoDataTableCell", bundle: nil), forCellReuseIdentifier: "NoDataTableCell")
            
        }
    }
    var controllerData: Data?
    var arrOfIndex:[Int] = []
    var strNoData : String = ""
    var tabSelected : Int = 0
    var isTabSelected: Bool = true
    var sectionModel = [SectionHeaderViewModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTable()
        createSectionHeader()
        serviceCall()
    }
 
    //MARK:- Configure UI
    func configureTable() {
        lblNoData.isHidden = true
        tblEvent.isHidden = true
        tblEvent.rowHeight = UITableView.automaticDimension
        tblEvent.estimatedRowHeight = 100
    }
    
    func createSectionHeader()  {
        sectionModel.append(SectionHeaderViewModel(isSelected: true, title: "OverView", index: 0, tabIndicatorColor: UIColor(named: "AppBlueColor")))
        sectionModel.append(SectionHeaderViewModel(isSelected: false, title: "Aditional Info", index: 1, tabIndicatorColor: UIColor(named: "AppBlueColor")))
        sectionModel.append(SectionHeaderViewModel(isSelected: false, title: "Contact", index: 2, tabIndicatorColor: UIColor(named: "AppBlueColor")))
        sectionModel.append(SectionHeaderViewModel(isSelected: false, title: "Comment", index: 3, tabIndicatorColor: UIColor(named: "AppBlueColor")))
    }
    
    //MARK:- Service Call
    func serviceCall() {
        SVProgressHUD.show()
        makeGetCallWithAlamofire { (response) in
            if let res = response {
                self.controllerData = Data(dictionary: res as NSDictionary)
                self.tblEvent.isHidden = false
                self.tblEvent.reloadData()
                SVProgressHUD.dismiss()
            }
        }
    }
    
}

//MARK: Table view delegate
extension EventDetailVC : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            if tabSelected == 0 {
                return 6
            }
            else {
                return 1
            }
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        } else if section == 1 {
            return 50
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1 {
            let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "SectionHeaderView") as! SectionHeaderView
            headerView.setDelegateHandler(self)
            
            headerView.setData(sectionModel)
            headerView.section = section
            return headerView
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let model = self.controllerData {
            if indexPath.section == 0 {
                let cell:TopImageTableCell = tableView.dequeueReusableCell(withIdentifier: "TopImageTableCell") as! TopImageTableCell
                cell.selectionStyle = .none
                cell.configureCell(data: model)
                return cell
            } else if indexPath.section == 1 {
                if tabSelected == 0 {
                    if indexPath.row == 0 {
                        let cell: BasicEventDetCell = tableView.dequeueReusableCell(withIdentifier: "BasicEventDetCell") as! BasicEventDetCell
                        cell.configureCell(data: model)
                        cell.selectionStyle = .none
                        return cell
                    } else if indexPath.row == 1 {
                        let cell: EventLocationCell = tableView.dequeueReusableCell(withIdentifier: "EventLocationCell") as! EventLocationCell
                        cell.selectionStyle = .none
                        cell.configureCell(data: model)
                        return cell
                    } else if indexPath.row == 2 {
                        let cell: DescEventDetCell = tableView.dequeueReusableCell(withIdentifier: "DescEventDetCell") as! DescEventDetCell
                        cell.selectionStyle = .none
                        cell.configureCell(data: model)
                        return cell
                    } else if indexPath.row == 3 ||  indexPath.row == 4 || indexPath.row == 5 {
                        let cell: ViewEventCell = tableView.dequeueReusableCell(withIdentifier: "ViewEventCell") as! ViewEventCell
                        cell.selectionStyle = .none
                        if indexPath.row == 3 {
                            cell.lblEvView.text = "View event organizer"
                            cell.configureOrganizer(data: model.event_organizer, type: .organizer)
                        } else if indexPath.row == 4 {
                            cell.lblEvView.text = "View event sponsers"
                            cell.configureSponser(data: model.event_sponser, type: .sponser)
                        }else if indexPath.row == 5 {
                            cell.lblEvView.text = "View event performers"
                            cell.configurePerformer(data: model.event_performer, type: .performer)
                            
                        }
                        cell.btnExpand.addTarget(self, action:#selector(buttonClicked),for: UIControl.Event.touchUpInside)
                        return cell
                    }
                    
                }  else if tabSelected == 1 ||  tabSelected == 2 || tabSelected == 3  {
                    let cell: NoDataTableCell = tableView.dequeueReusableCell(withIdentifier: "NoDataTableCell") as! NoDataTableCell
                    cell.selectionStyle = .none
                    cell.configureCell(str: strNoData)
                    return cell                                    }
                
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 355
        } else {
            if indexPath.row == 3 || indexPath.row == 4 || indexPath.row == 5{
                
                if !arrOfIndex.contains(indexPath.row){
                    return 100
                }else{
                    return 230
                }
            }else{
                return UITableView.automaticDimension
            }
        }
    }
    
//    MARK:- Action on cell btn tappped
    @objc func buttonClicked(sender:UIButton)
    {
        let buttonPosition = sender.convert(CGPoint.zero, to: self.tblEvent)
        guard  let indexPath = self.tblEvent.indexPathForRow(at:buttonPosition) else{
            return
        }
        if arrOfIndex.contains(indexPath.row){
            arrOfIndex.remove(at:arrOfIndex.firstIndex(of: indexPath.row) ?? 0)
            sender.setTitle("+", for: .normal)
        }else{
            arrOfIndex.append(indexPath.row)
            sender.setTitle("-", for: .normal)
        }
        tblEvent.reloadData()
    }
}

//MARK: Section header Delegate
extension EventDetailVC: SectionHeaderViewDelegate {
    func updateData(dataList: [SectionHeaderViewModel], section: Int, selectedTabIndex : Int) {
        tabSelected = selectedTabIndex
        self.sectionModel[tabSelected].isSelected = true
        if selectedTabIndex == 0{
            strNoData = ""
        } else {
            if selectedTabIndex == 1 {
                strNoData = "No Aditional Info"
            } else if selectedTabIndex == 2 {
                strNoData = "No Contact"
            } else if selectedTabIndex == 3 {
                strNoData = "No Comment"
            }
        }
        tblEvent.reloadData()
    }
}
