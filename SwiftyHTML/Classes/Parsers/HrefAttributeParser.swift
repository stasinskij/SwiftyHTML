//
//  HrefAttributeParser.swift
//  Pods
//
//  Created by Bartek Tułodziecki on 04/11/2016.
//
//

struct HrefAttributeParser: AttributeValueParser {
    
    func parsed(attributes: [String : Any]) -> [TagAttribute] {
        if let urlValue = attributes[NSLinkAttributeName],
            let url = urlValue as? NSURL,
            let absoluteStr = url.absoluteString,
            let href = Href.init(value:absoluteStr) {
            return [href]
        }
        
        return []
    }
}
