//
//  SpanFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

import Foundation

public struct SpanFactory: TagGenerating {
    
    public func generateTag(content: String, range: NSRange, attributes: [NSAttributedString.Key : Any]) -> Tag? {
        let styleAttributes = StyleAttributeParser().parsed(attributes: attributes)
        return SwiftyHTMLConfiguration.spanClass.init(value: content, range: range, attributes: styleAttributes)
    }
}
