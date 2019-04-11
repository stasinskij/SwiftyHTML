//
//  Href.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

open class Href: TagAttribute {
    public var name: String = "href"
    open var value: String
    
    public var attributedString: NSMutableAttributedString? {
        return NSMutableAttributedString(string: self.value, attributes: convertToOptionalNSAttributedStringKeyDictionary([convertFromNSAttributedStringKey(NSAttributedString.Key.link) : self.value]))
    }
    
    public required init?(value: String) {
        guard let escapedString = value.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return nil }
        self.value = escapedString
    }

    // This needs to be implemented so that a subclass can override it.
    // Default TagAttribute implementation used otherwise.
    open func htmlString() -> String {
        return self.name + "=" + "\"\(self.value)\""
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
	guard let input = input else { return nil }
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringKey(_ input: NSAttributedString.Key) -> String {
	return input.rawValue
}
