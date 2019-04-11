//
//  Anchor.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

open class Anchor: Tag {
    public var name: String = "a"
    open var value: String
    open var range: NSRange
    open var attributes: [TagAttribute]
    
    public var attributedString: NSMutableAttributedString? {
        return NSMutableAttributedString(string: self.value, attributes: convertToOptionalNSAttributedStringKeyDictionary([convertFromNSAttributedStringKey(NSAttributedString.Key.underlineStyle) : NSUnderlineStyle.single.rawValue,
                                                                          convertFromNSAttributedStringKey(NSAttributedString.Key.foregroundColor) : UIColor.blue]))
    }
    
    public required init(value: String, range: NSRange, attributes: [TagAttribute]) {
        self.value = value
        self.range = range
        self.attributes = attributes
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
