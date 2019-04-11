//
//  StyleAttributeParser.swift
//  Pods
//
//  Created by Bartek Tułodziecki on 04/11/2016.
//
//

import UIKit

public struct StyleAttributeParser: AttributeValueParser {
    
    public func parsed(attributes: [NSAttributedString.Key : Any]) -> [TagAttribute] {
        let styleAttribute = Style()
        if let fontValue = attributes[NSAttributedString.Key.font],
            let font = fontValue as? UIFont {
            styleAttribute.font = font
        }
        
        if let foregroundColorValue = attributes[NSAttributedString.Key.foregroundColor],
            let color = foregroundColorValue as? UIColor {
            styleAttribute.color = color
        }
        
        if let backgroundColorValue = attributes[NSAttributedString.Key.backgroundColor],
            let color = backgroundColorValue as? UIColor {
            styleAttribute.backgroundColor = color
        }
        
        if let underlineValue = attributes[NSAttributedString.Key.underlineStyle] as? Int,
            underlineValue > 0 {
            styleAttribute.underline = true
        }
        
        if let strikethroughValue = attributes[NSAttributedString.Key.strikethroughStyle] as? Int,
            strikethroughValue > 0 {
            styleAttribute.strikethrough = true
        }
        
        if let paragraphStyle = attributes[NSAttributedString.Key.paragraphStyle] as? NSParagraphStyle {
            styleAttribute.textAlignment = paragraphStyle.alignment
        }
        
        return styleAttribute.value != "" ? [styleAttribute] : []
    }
}
