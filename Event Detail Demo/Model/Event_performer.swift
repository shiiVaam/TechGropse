/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Event_performer {
	public var performer_id : String?
	public var p_name : String?
	public var p_name_ar : String?
	public var p_logo : String?
	public var p_detail : String?
	public var p_detail_ar : String?
	public var p_type : String?
	public var p_contact : String?
	public var p_email : String?
	public var p_website : String?
	public var p_image : String?
	public var p_status : String?
	public var p_created_at : String?
	public var event_organizer_id : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let event_performer_list = Event_performer.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Event_performer Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Event_performer]
    {
        var models:[Event_performer] = []
        for item in array
        {
            models.append(Event_performer(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let event_performer = Event_performer(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Event_performer Instance.
*/
	required public init?(dictionary: NSDictionary) {

		performer_id = dictionary["performer_id"] as? String
		p_name = dictionary["p_name"] as? String
		p_name_ar = dictionary["p_name_ar"] as? String
		p_logo = dictionary["p_logo"] as? String
		p_detail = dictionary["p_detail"] as? String
		p_detail_ar = dictionary["p_detail_ar"] as? String
		p_type = dictionary["p_type"] as? String
		p_contact = dictionary["p_contact"] as? String
		p_email = dictionary["p_email"] as? String
		p_website = dictionary["p_website"] as? String
		p_image = dictionary["p_image"] as? String
		p_status = dictionary["p_status"] as? String
		p_created_at = dictionary["p_created_at"] as? String
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

		dictionary.setValue(self.performer_id, forKey: "performer_id")
		dictionary.setValue(self.p_name, forKey: "p_name")
		dictionary.setValue(self.p_name_ar, forKey: "p_name_ar")
		dictionary.setValue(self.p_logo, forKey: "p_logo")
		dictionary.setValue(self.p_detail, forKey: "p_detail")
		dictionary.setValue(self.p_detail_ar, forKey: "p_detail_ar")
		dictionary.setValue(self.p_type, forKey: "p_type")
		dictionary.setValue(self.p_contact, forKey: "p_contact")
		dictionary.setValue(self.p_email, forKey: "p_email")
		dictionary.setValue(self.p_website, forKey: "p_website")
		dictionary.setValue(self.p_image, forKey: "p_image")
		dictionary.setValue(self.p_status, forKey: "p_status")
		dictionary.setValue(self.p_created_at, forKey: "p_created_at")
		dictionary.setValue(self.event_organizer_id, forKey: "event_organizer_id")

		return dictionary
	}

}
