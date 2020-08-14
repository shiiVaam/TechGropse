//
//  EventLocationCell.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 12/08/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit
import MapKit

class EventLocationCell: UITableViewCell {

    @IBOutlet weak var lblEvCountry: UILabel!
    
    @IBOutlet weak var lblEvAddress: UILabel!
    
    @IBOutlet weak var mkEvMap: MKMapView!
    
    func configureCell(data: Data?) {
        lblEvCountry.text = "\(data?.ev_city ?? "") - \(data?.ev_country ?? "")"
        lblEvAddress.text = data?.ev_address ?? ""
        
        let lat = Double(data?.ev_lat ?? "0") ?? 0.0
        let long = Double(data?.ev_long  ?? "0") ?? 0.0
        let location = CLLocationCoordinate2DMake(lat, long);
        // Drop a pin
        let dropPin = MKPointAnnotation();
        dropPin.coordinate = location;
        dropPin.title = data?.ev_region
        self.mkEvMap.addAnnotation(dropPin);
        
        
    }

}
