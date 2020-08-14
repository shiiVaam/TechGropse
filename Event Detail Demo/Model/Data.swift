/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Data {
	public var event_id : String?
	public var ev_user_id : String?
	public var ev_event_type : String?
	public var ev_category_id : String?
	public var ev_tag_id : String?
	public var ev_venue_id : String?
	public var ev_event_fee : String?
	public var ev_is_public : String?
	public var ev_featured : String?
	public var ev_name : String?
	public var ev_name_ar : String?
	public var ev_title : String?
	public var ev_title_ar : String?
	public var ev_organizer_name : String?
	public var ev_organizer_id : String?
	public var ev_start_date : String?
	public var ev_end_date : String?
	public var ev_start_time : String?
	public var ev_end_time : String?
	public var ev_image : Array<Ev_image>?
	public var ev_seating_map_image : Array<String>?
	public var ev_vennue_name : String?
	public var ev_vennue_name_ar : String?
	public var ev_country : String?
	public var ev_region : String?
	public var ev_city : String?
	public var ev_address : String?
	public var ev_lat : String?
	public var ev_long : String?
	public var ev_gender : String?
	public var ev_age_id : String?
	public var ev_language : String?
	public var ev_imp_notes : String?
	public var ev_imp_notes_ar : String?
	public var ev_description : String?
	public var ev_description_ar : String?
	public var ev_detail : String?
	public var ev_detail_ar : String?
	public var ev_email : String?
	public var ev_contact : String?
	public var ev_whatsapp_no : String?
	public var ev_website : String?
	public var ev_views : String?
	public var ev_like : String?
	public var ev_status : String?
	public var ev_is_promoted : String?
	public var ev_promote_country : String?
	public var ev_promote_city : String?
	public var ev_promoted_points : String?
	public var ev_created_at : String?
	public var ev_is_fav : String?
	public var category_name : String?
	public var category_color : String?
	public var ev_users_points : String?
	public var ev_country_id : String?
	public var ev_city_id : String?
	public var ev_region_id : String?
	public var ev_country_points : String?
	public var ev_region_points : String?
	public var ev_city_points : String?
	public var ev_event_type_name : String?
	public var ev_reminder : String?
	public var ev_is_reminder : String?
	public var ev_new : String?
	public var distance : String?
	public var event_organizer : Array<Event_organizer>?
	public var event_sponser : Array<Event_sponser>?
	public var event_performer : Array<Event_performer>?
	public var commentCount : String?
	public var comment : Array<Comment>?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let data_list = Data.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Data Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Data]
    {
        var models:[Data] = []
        for item in array
        {
            models.append(Data(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let data = Data(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Data Instance.
*/
	required public init?(dictionary: NSDictionary) {

		event_id = dictionary["event_id"] as? String
		ev_user_id = dictionary["ev_user_id"] as? String
		ev_event_type = dictionary["ev_event_type"] as? String
		ev_category_id = dictionary["ev_category_id"] as? String
		ev_tag_id = dictionary["ev_tag_id"] as? String
		ev_venue_id = dictionary["ev_venue_id"] as? String
		ev_event_fee = dictionary["ev_event_fee"] as? String
		ev_is_public = dictionary["ev_is_public"] as? String
		ev_featured = dictionary["ev_featured"] as? String
		ev_name = dictionary["ev_name"] as? String
		ev_name_ar = dictionary["ev_name_ar"] as? String
		ev_title = dictionary["ev_title"] as? String
		ev_title_ar = dictionary["ev_title_ar"] as? String
		ev_organizer_name = dictionary["ev_organizer_name"] as? String
		ev_organizer_id = dictionary["ev_organizer_id"] as? String
		ev_start_date = dictionary["ev_start_date"] as? String
		ev_end_date = dictionary["ev_end_date"] as? String
		ev_start_time = dictionary["ev_start_time"] as? String
		ev_end_time = dictionary["ev_end_time"] as? String
        if (dictionary["ev_image"] != nil) { ev_image = Ev_image.modelsFromDictionaryArray(array: dictionary["ev_image"] as! NSArray) }
//		if (dictionary["ev_seating_map_image"] != nil) { ev_seating_map_image = Ev_seating_map_image.modelsFromDictionaryArray(dictionary["ev_seating_map_image"] as! NSArray) }
		ev_vennue_name = dictionary["ev_vennue_name"] as? String
		ev_vennue_name_ar = dictionary["ev_vennue_name_ar"] as? String
		ev_country = dictionary["ev_country"] as? String
		ev_region = dictionary["ev_region"] as? String
		ev_city = dictionary["ev_city"] as? String
		ev_address = dictionary["ev_address"] as? String
		ev_lat = dictionary["ev_lat"] as? String
		ev_long = dictionary["ev_long"] as? String
		ev_gender = dictionary["ev_gender"] as? String
		ev_age_id = dictionary["ev_age_id"] as? String
		ev_language = dictionary["ev_language"] as? String
		ev_imp_notes = dictionary["ev_imp_notes"] as? String
		ev_imp_notes_ar = dictionary["ev_imp_notes_ar"] as? String
		ev_description = dictionary["ev_description"] as? String
		ev_description_ar = dictionary["ev_description_ar"] as? String
		ev_detail = dictionary["ev_detail"] as? String
		ev_detail_ar = dictionary["ev_detail_ar"] as? String
		ev_email = dictionary["ev_email"] as? String
		ev_contact = dictionary["ev_contact"] as? String
		ev_whatsapp_no = dictionary["ev_whatsapp_no"] as? String
		ev_website = dictionary["ev_website"] as? String
		ev_views = dictionary["ev_views"] as? String
		ev_like = dictionary["ev_like"] as? String
		ev_status = dictionary["ev_status"] as? String
		ev_is_promoted = dictionary["ev_is_promoted"] as? String
		ev_promote_country = dictionary["ev_promote_country"] as? String
		ev_promote_city = dictionary["ev_promote_city"] as? String
		ev_promoted_points = dictionary["ev_promoted_points"] as? String
		ev_created_at = dictionary["ev_created_at"] as? String
		ev_is_fav = dictionary["ev_is_fav"] as? String
		category_name = dictionary["category_name"] as? String
		category_color = dictionary["category_color"] as? String
		ev_users_points = dictionary["ev_users_points"] as? String
		ev_country_id = dictionary["ev_country_id"] as? String
		ev_city_id = dictionary["ev_city_id"] as? String
		ev_region_id = dictionary["ev_region_id"] as? String
		ev_country_points = dictionary["ev_country_points"] as? String
		ev_region_points = dictionary["ev_region_points"] as? String
		ev_city_points = dictionary["ev_city_points"] as? String
		ev_event_type_name = dictionary["ev_event_type_name"] as? String
		ev_reminder = dictionary["ev_reminder"] as? String
		ev_is_reminder = dictionary["ev_is_reminder"] as? String
		ev_new = dictionary["ev_new"] as? String
		distance = dictionary["distance"] as? String
        if (dictionary["event_organizer"] != nil) { event_organizer = Event_organizer.modelsFromDictionaryArray(array: dictionary["event_organizer"] as! NSArray) }
        if (dictionary["event_sponser"] != nil) { event_sponser = Event_sponser.modelsFromDictionaryArray(array: dictionary["event_sponser"] as! NSArray) }
        if (dictionary["event_performer"] != nil) { event_performer = Event_performer.modelsFromDictionaryArray(array: dictionary["event_performer"] as! NSArray) }
		commentCount = dictionary["commentCount"] as? String
        if (dictionary["comment"] != nil) { comment = Comment.modelsFromDictionaryArray(array: dictionary["comment"] as! NSArray) }

	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.event_id, forKey: "event_id")
		dictionary.setValue(self.ev_user_id, forKey: "ev_user_id")
		dictionary.setValue(self.ev_event_type, forKey: "ev_event_type")
		dictionary.setValue(self.ev_category_id, forKey: "ev_category_id")
		dictionary.setValue(self.ev_tag_id, forKey: "ev_tag_id")
		dictionary.setValue(self.ev_venue_id, forKey: "ev_venue_id")
		dictionary.setValue(self.ev_event_fee, forKey: "ev_event_fee")
		dictionary.setValue(self.ev_is_public, forKey: "ev_is_public")
		dictionary.setValue(self.ev_featured, forKey: "ev_featured")
		dictionary.setValue(self.ev_name, forKey: "ev_name")
		dictionary.setValue(self.ev_name_ar, forKey: "ev_name_ar")
		dictionary.setValue(self.ev_title, forKey: "ev_title")
		dictionary.setValue(self.ev_title_ar, forKey: "ev_title_ar")
		dictionary.setValue(self.ev_organizer_name, forKey: "ev_organizer_name")
		dictionary.setValue(self.ev_organizer_id, forKey: "ev_organizer_id")
		dictionary.setValue(self.ev_start_date, forKey: "ev_start_date")
		dictionary.setValue(self.ev_end_date, forKey: "ev_end_date")
		dictionary.setValue(self.ev_start_time, forKey: "ev_start_time")
		dictionary.setValue(self.ev_end_time, forKey: "ev_end_time")
		dictionary.setValue(self.ev_vennue_name, forKey: "ev_vennue_name")
		dictionary.setValue(self.ev_vennue_name_ar, forKey: "ev_vennue_name_ar")
		dictionary.setValue(self.ev_country, forKey: "ev_country")
		dictionary.setValue(self.ev_region, forKey: "ev_region")
		dictionary.setValue(self.ev_city, forKey: "ev_city")
		dictionary.setValue(self.ev_address, forKey: "ev_address")
		dictionary.setValue(self.ev_lat, forKey: "ev_lat")
		dictionary.setValue(self.ev_long, forKey: "ev_long")
		dictionary.setValue(self.ev_gender, forKey: "ev_gender")
		dictionary.setValue(self.ev_age_id, forKey: "ev_age_id")
		dictionary.setValue(self.ev_language, forKey: "ev_language")
		dictionary.setValue(self.ev_imp_notes, forKey: "ev_imp_notes")
		dictionary.setValue(self.ev_imp_notes_ar, forKey: "ev_imp_notes_ar")
		dictionary.setValue(self.ev_description, forKey: "ev_description")
		dictionary.setValue(self.ev_description_ar, forKey: "ev_description_ar")
		dictionary.setValue(self.ev_detail, forKey: "ev_detail")
		dictionary.setValue(self.ev_detail_ar, forKey: "ev_detail_ar")
		dictionary.setValue(self.ev_email, forKey: "ev_email")
		dictionary.setValue(self.ev_contact, forKey: "ev_contact")
		dictionary.setValue(self.ev_whatsapp_no, forKey: "ev_whatsapp_no")
		dictionary.setValue(self.ev_website, forKey: "ev_website")
		dictionary.setValue(self.ev_views, forKey: "ev_views")
		dictionary.setValue(self.ev_like, forKey: "ev_like")
		dictionary.setValue(self.ev_status, forKey: "ev_status")
		dictionary.setValue(self.ev_is_promoted, forKey: "ev_is_promoted")
		dictionary.setValue(self.ev_promote_country, forKey: "ev_promote_country")
		dictionary.setValue(self.ev_promote_city, forKey: "ev_promote_city")
		dictionary.setValue(self.ev_promoted_points, forKey: "ev_promoted_points")
		dictionary.setValue(self.ev_created_at, forKey: "ev_created_at")
		dictionary.setValue(self.ev_is_fav, forKey: "ev_is_fav")
		dictionary.setValue(self.category_name, forKey: "category_name")
		dictionary.setValue(self.category_color, forKey: "category_color")
		dictionary.setValue(self.ev_users_points, forKey: "ev_users_points")
		dictionary.setValue(self.ev_country_id, forKey: "ev_country_id")
		dictionary.setValue(self.ev_city_id, forKey: "ev_city_id")
		dictionary.setValue(self.ev_region_id, forKey: "ev_region_id")
		dictionary.setValue(self.ev_country_points, forKey: "ev_country_points")
		dictionary.setValue(self.ev_region_points, forKey: "ev_region_points")
		dictionary.setValue(self.ev_city_points, forKey: "ev_city_points")
		dictionary.setValue(self.ev_event_type_name, forKey: "ev_event_type_name")
		dictionary.setValue(self.ev_reminder, forKey: "ev_reminder")
		dictionary.setValue(self.ev_is_reminder, forKey: "ev_is_reminder")
		dictionary.setValue(self.ev_new, forKey: "ev_new")
		dictionary.setValue(self.distance, forKey: "distance")
		dictionary.setValue(self.commentCount, forKey: "commentCount")

		return dictionary
	}

}
