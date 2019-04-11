//
//  TestAttributedStrings.swift
//  SwiftyHTML
//
//  Created by Bartosz Tułodziecki on 02/12/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit
import SwiftyHTML

class TestAttributedStrings {
    
    static let stringWithNoAttributes: NSMutableAttributedString = {
        return NSMutableAttributedString(string: "plain string")
    }()
    
    static let stringWithBlueColorAttribute: NSMutableAttributedString = {
        return NSMutableAttributedString(string: "blue string", attributes: convertToOptionalNSAttributedStringKeyDictionary([convertFromNSAttributedStringKey(NSAttributedString.Key.foregroundColor) : UIColor.blue]))
    }()
    
    static let stringWithLinkAttribute: NSMutableAttributedString = {
        return NSMutableAttributedString(string: "A Google link", attributes: convertToOptionalNSAttributedStringKeyDictionary([convertFromNSAttributedStringKey(NSAttributedString.Key.link) : NSURL.init(string: "https://www.google.com")!]))
    }()
    
    static let stringWithLinkAndAltAttribute: NSMutableAttributedString = {
        let linkString = TestAttributedStrings.stringWithLinkAttribute
        linkString.addAttribute(convertToNSAttributedStringKey(Alt.AltAttributeName), value: "TestAltValue", range: NSMakeRange(0, linkString.length))
        return linkString
    }()
    
    static let stringWithMultipleAttributes: NSMutableAttributedString = {
        let prefix = "A "
        let urlString = "Google link"
        let suffix = " string"
        let inputString = NSString(string: prefix + urlString + suffix)
        
        let str = NSMutableAttributedString(string: inputString as String)
        
        str.addAttribute(NSAttributedString.Key.link, value: NSURL.init(string: "https://www.google.com")!, range: inputString.range(of: urlString, options: .caseInsensitive))
        str.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSMakeRange(0, 4))
        str.addAttribute(NSAttributedString.Key.font, value: UIFont.boldSystemFont(ofSize: 16), range: NSMakeRange(0, 4))
        str.addAttribute(NSAttributedString.Key.font, value: UIFont.boldSystemFont(ofSize: 24), range: inputString.range(of: suffix, options: .caseInsensitive))
        str.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.green, range: inputString.range(of: suffix, options: .caseInsensitive))
        
        let palatinoString = NSMutableAttributedString(string: "\nthis is Palatino-Roman string")
        palatinoString.addAttribute(NSAttributedString.Key.font, value: UIFont.init(name: "Palatino-Roman", size: 16.0)!, range: NSMakeRange(0, palatinoString.length))
        
        str.append(palatinoString)
        
        let cleanString = NSMutableAttributedString(string: "\nthis is a string with no attributes")
        str.append(cleanString)
        return str
    }()
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

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToNSAttributedStringKey(_ input: String) -> NSAttributedString.Key {
	return NSAttributedString.Key(rawValue: input)
}
