//
//  HrefAttributeParser.swift
//  Pods
//
//  Created by Bartek Tułodziecki on 04/11/2016.
//
//

import UIKit

public struct HrefAttributeParser: AttributeValueParser {
    
    public func parsed(attributes: [NSAttributedString.Key : Any]) -> [TagAttribute] {
        // Generate style attribute if available
        var styleAttributes = StyleAttributeParser().parsed(attributes: attributes)
        
        if let urlValue = attributes[NSAttributedString.Key.link],
            let url = urlValue as? NSURL,
            let absoluteStr = url.absoluteString,
            let href = SwiftyHTMLConfiguration.hrefClass.init(value:absoluteStr) {
            styleAttributes += [href as TagAttribute]
        }
        
        if let altValue = attributes[NSAttributedString.Key(rawValue: Alt.AltAttributeName)] as? String, let alt = Alt.init(value: altValue) {
            styleAttributes += [alt]
        }
        
        return styleAttributes
    }
}
