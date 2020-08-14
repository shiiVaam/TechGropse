//
//  SplashVC.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 13/08/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit

class SplashVC: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblBody: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setGradientBackground()
        lblBody.setTextWithTypeAnimation(typedText: "The name you can trust.", characterDelay: 5.0)
      
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
          // Code to push/present new view controller
            let eventVC = self.storyboard?.instantiateViewController(withIdentifier: "EventDetailVC") as! EventDetailVC
                  self.navigationController?.pushViewController(eventVC, animated: true)
          }
    
    }

    
       func setGradientBackground() {
        let colorTop =  UIColor(red: 123.0/255.0, green: 67.0/255.0, blue: 151.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 220.0/255.0, green: 36.0/255.0, blue: 48.0/255.0, alpha: 1.0).cgColor

             let gradientLayer = CAGradientLayer()
             gradientLayer.colors = [colorTop, colorBottom]
             gradientLayer.locations = [0.0, 1.0]
             gradientLayer.frame = self.view.bounds
        
        

             self.view.layer.insertSublayer(gradientLayer, at:0)
         }
    

}


