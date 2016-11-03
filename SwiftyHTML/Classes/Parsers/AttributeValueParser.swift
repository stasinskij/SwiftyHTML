//
//  AttributeValueParser.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 28/10/2016.
//
//

struct AttributeValueParser {
    
    func parsed(attributes: [String : Any]) -> [TagAttribute] {
        var parsed = [TagAttribute]()
        
        for (key, value) in attributes {
            if key == NSLinkAttributeName {
                if let url = value as? NSURL,
                    let absoluteStr = url.absoluteString,
                    let href = Href.init(value:absoluteStr) {
                    parsed.append(href)
                }
            }
            
            // This might be refactored... I don't like the idea of assembling font and foreground-color this way...
            
            if key == NSFontAttributeName {
                if key == NSFontAttributeName {
                    if let font = value as? UIFont {
                        // create style attribute
                    }
                }
            }
        }
        
        return parsed
    }
}
