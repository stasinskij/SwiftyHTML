//
//  AttributedStringParser.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

import Foundation

public struct AttributtedStringParser {
    
    // Required for Test target
    public init() {}
    
    public func tagWith(string: String, range: NSRange, attributes: [NSAttributedString.Key: Any]) -> Tag? {
        let factory = TagFactory.factory(attributes: attributes)
        let tag = factory.generateTag(content: string, range: range, attributes: attributes)
        return tag
    }
}
