/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Event_organizer {
	public var organizer_id : String?
	public var o_name : String?
	public var o_name_ar : String?
	public var o_logo : String?
	public var o_detail : String?
	public var o_detail_ar : String?
	public var o_contact : String?
	public var o_email : String?
	public var o_website : String?
	public var o_image : String?
	public var o_status : String?
	public var o_created_at : String?
	public var event_organizer_id : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let event_organizer_list = Event_organizer.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Event_organizer Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Event_organizer]
    {
        var models:[Event_organizer] = []
        for item in array
        {
            models.append(Event_organizer(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let event_organizer = Event_organizer(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Event_organizer Instance.
*/
	required public init?(dictionary: NSDictionary) {

		organizer_id = dictionary["organizer_id"] as? String
		o_name = dictionary["o_name"] as? String
		o_name_ar = dictionary["o_name_ar"] as? String
		o_logo = dictionary["o_logo"] as? String
		o_detail = dictionary["o_detail"] as? String
		o_detail_ar = dictionary["o_detail_ar"] as? String
		o_contact = dictionary["o_contact"] as? String
		o_email = dictionary["o_email"] as? String
		o_website = dictionary["o_website"] as? String
		o_image = dictionary["o_image"] as? String
		o_status = dictionary["o_status"] as? String
		o_created_at = dictionary["o_created_at"] as? String
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

		dictionary.setValue(self.organizer_id, forKey: "organizer_id")
		dictionary.setValue(self.o_name, forKey: "o_name")
		dictionary.setValue(self.o_name_ar, forKey: "o_name_ar")
		dictionary.setValue(self.o_logo, forKey: "o_logo")
		dictionary.setValue(self.o_detail, forKey: "o_detail")
		dictionary.setValue(self.o_detail_ar, forKey: "o_detail_ar")
		dictionary.setValue(self.o_contact, forKey: "o_contact")
		dictionary.setValue(self.o_email, forKey: "o_email")
		dictionary.setValue(self.o_website, forKey: "o_website")
		dictionary.setValue(self.o_image, forKey: "o_image")
		dictionary.setValue(self.o_status, forKey: "o_status")
		dictionary.setValue(self.o_created_at, forKey: "o_created_at")
		dictionary.setValue(self.event_organizer_id, forKey: "event_organizer_id")

		return dictionary
	}

}
