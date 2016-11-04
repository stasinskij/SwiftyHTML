//
//  StyleAttributeParser.swift
//  Pods
//
//  Created by Bartek Tułodziecki on 04/11/2016.
//
//

struct StyleAttributeParser {
    
    func parsed(attributes: [String : Any]) -> [TagAttribute] {
        var parsed = [TagAttribute]()
        if let fontValue = attributes[NSFontAttributeName] {
            //
        }
        
        if let foregroundColorValue = attributes[NSForegroundColorAttributeName] {
            //
        }
        
        if let backgroundColorValue = attributes[NSBackgroundColorAttributeName] {
            //
        }
        
        return parsed
    }
}
