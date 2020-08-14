/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Event_sponser {
	public var sponsor_id : String?
	public var s_name : String?
	public var s_name_ar : String?
	public var s_logo : String?
	public var s_detail : String?
	public var s_detail_ar : String?
	public var s_contact : String?
	public var s_type : String?
	public var s_email : String?
	public var s_website : String?
	public var s_image : String?
	public var s_status : String?
	public var s_created_at : String?
	public var event_organizer_id : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let event_sponser_list = Event_sponser.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Event_sponser Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Event_sponser]
    {
        var models:[Event_sponser] = []
        for item in array
        {
            models.append(Event_sponser(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let event_sponser = Event_sponser(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Event_sponser Instance.
*/
	required public init?(dictionary: NSDictionary) {

		sponsor_id = dictionary["sponsor_id"] as? String
		s_name = dictionary["s_name"] as? String
		s_name_ar = dictionary["s_name_ar"] as? String
		s_logo = dictionary["s_logo"] as? String
		s_detail = dictionary["s_detail"] as? String
		s_detail_ar = dictionary["s_detail_ar"] as? String
		s_contact = dictionary["s_contact"] as? String
		s_type = dictionary["s_type"] as? String
		s_email = dictionary["s_email"] as? String
		s_website = dictionary["s_website"] as? String
		s_image = dictionary["s_image"] as? String
		s_status = dictionary["s_status"] as? String
		s_created_at = dictionary["s_created_at"] as? String
		event_organizer_id = dictionary["event_organizer_id"] as? String
	}
    init() {
    }
		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.sponsor_id, forKey: "sponsor_id")
		dictionary.setValue(self.s_name, forKey: "s_name")
		dictionary.setValue(self.s_name_ar, forKey: "s_name_ar")
		dictionary.setValue(self.s_logo, forKey: "s_logo")
		dictionary.setValue(self.s_detail, forKey: "s_detail")
		dictionary.setValue(self.s_detail_ar, forKey: "s_detail_ar")
		dictionary.setValue(self.s_contact, forKey: "s_contact")
		dictionary.setValue(self.s_type, forKey: "s_type")
		dictionary.setValue(self.s_email, forKey: "s_email")
		dictionary.setValue(self.s_website, forKey: "s_website")
		dictionary.setValue(self.s_image, forKey: "s_image")
		dictionary.setValue(self.s_status, forKey: "s_status")
		dictionary.setValue(self.s_created_at, forKey: "s_created_at")
		dictionary.setValue(self.event_organizer_id, forKey: "event_organizer_id")

		return dictionary
	}

}
