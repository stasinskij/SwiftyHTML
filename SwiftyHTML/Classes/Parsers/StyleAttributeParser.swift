//
//  StyleAttributeParser.swift
//  Pods
//
//  Created by Bartek Tułodziecki on 04/11/2016.
//
//

import UIKit

public struct StyleAttributeParser {
    
    public func parsed(attributes: [String : Any]) -> [TagAttribute] {
        let styleAttribute = Style()
        if let fontValue = attributes[NSFontAttributeName],
            let font = fontValue as? UIFont {
            styleAttribute.font = font
        }
        
        if let foregroundColorValue = attributes[NSForegroundColorAttributeName],
            let color = foregroundColorValue as? UIColor {
            styleAttribute.color = color
        }
        
        if let backgroundColorValue = attributes[NSBackgroundColorAttributeName],
            let color = backgroundColorValue as? UIColor {
            styleAttribute.backgroundColor = color
        }
        
        if let underlineValue = attributes[NSUnderlineStyleAttributeName] as? Int,
            underlineValue > 0 {
            styleAttribute.underline = true
        }
        
        if let strikethroughValue = attributes[NSStrikethroughStyleAttributeName] as? Int,
            strikethroughValue > 0 {
            styleAttribute.strikethrough = true
        }
        
        return styleAttribute.value != "" ? [styleAttribute] : []
    }
}
