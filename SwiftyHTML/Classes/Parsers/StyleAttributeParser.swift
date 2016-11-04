//
//  StyleAttributeParser.swift
//  Pods
//
//  Created by Bartek Tułodziecki on 04/11/2016.
//
//

struct StyleAttributeParser {
    
    func parsed(attributes: [String : Any]) -> [TagAttribute] {
        var styleAttribute = Style()
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
        
        return styleAttribute.value != "" ? [styleAttribute] : []
    }
}
