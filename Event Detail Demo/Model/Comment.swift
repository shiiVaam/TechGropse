
import Foundation
 

public class Comment {
	public var comment_id : String?
	public var ec_event_id : String?
	public var ec_user_id : String?
	public var ec_comment : String?
	public var ec_status : String?
	public var ec_created_at : String?
	public var u_name : String?
	public var u_image : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let comment_list = Comment.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Comment Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Comment]
    {
        var models:[Comment] = []
        for item in array
        {
            models.append(Comment(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let comment = Comment(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Comment Instance.
*/
	required public init?(dictionary: NSDictionary) {

		comment_id = dictionary["comment_id"] as? String
		ec_event_id = dictionary["ec_event_id"] as? String
		ec_user_id = dictionary["ec_user_id"] as? String
		ec_comment = dictionary["ec_comment"] as? String
		ec_status = dictionary["ec_status"] as? String
		ec_created_at = dictionary["ec_created_at"] as? String
		u_name = dictionary["u_name"] as? String
		u_image = dictionary["u_image"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.comment_id, forKey: "comment_id")
		dictionary.setValue(self.ec_event_id, forKey: "ec_event_id")
		dictionary.setValue(self.ec_user_id, forKey: "ec_user_id")
		dictionary.setValue(self.ec_comment, forKey: "ec_comment")
		dictionary.setValue(self.ec_status, forKey: "ec_status")
		dictionary.setValue(self.ec_created_at, forKey: "ec_created_at")
		dictionary.setValue(self.u_name, forKey: "u_name")
		dictionary.setValue(self.u_image, forKey: "u_image")

		return dictionary
	}

}
