//
//  ServiceCalls.swift
//  Event Detail Demo
//
//  Created by Shivam Sharma on 8/14/20.
//  Copyright © 2020 Shivam Sharma. All rights reserved.
//

import Foundation
import Alamofire
import SVProgressHUD

func makeGetCallWithAlamofire(completion: @escaping (_ success: [String : Any]?) -> Void) {
    let todoEndpoint: String = "http://saudicalendar.com/api/user/getEventDetail?latitude=28.1245&longitude=78.1245&event_id=12&user_id=00"
    AF.request(todoEndpoint)
        .responseJSON { response in
            // check for errors
           
            guard response.error == nil else {
                // got an error in getting the data, need to handle it
                print("error calling GET on /todos/1")
                print(response.error!)
                return
            }
            
            // make sure we got some JSON since that's what we expect
            guard let json = response.value as? [String: Any] else {
                print("didn't get todo object as JSON from API")
                if let error = response.error {
                    print("Error: \(error)")
                }
                return
            }
            
            // get and print the title
            guard let data = json["data"] as? [String: Any] else {
                print("Could not get data from JSON")
                return
            }
            completion(data)
    }
}
