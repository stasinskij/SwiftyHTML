//
//  AnchorFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

import Foundation

public struct AnchorFactory: TagGenerating {
    
    public func generateTag(content: String, range: NSRange, attributes: [String : Any]) -> Tag? {
        print("should generate Anchor tag\n")
        let tagAttributes = HrefAttributeParser().parsed(attributes: attributes)
        return SwiftyHTMLConfiguration.anchorClass.init(value: content, range: range, attributes: tagAttributes)
    }
}
