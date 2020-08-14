//
//  ViewLoadXIB.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 12/08/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import UIKit

extension UIView {
    private static func loadViewFromXIB<T: UIView>(_ view: T.Type) -> T {
        let identifier = "\(view)"
        return Bundle(for: view).loadNibNamed(identifier, owner: nil)?.first as! T
    }
    
    /**
     Instantiates a view from it's XIB file in the bundle
     - Take note that name of your XIB should be same as your Class's name
     */
    static func loadFromXIB() -> Self {
        return loadViewFromXIB(self)
    }
}
