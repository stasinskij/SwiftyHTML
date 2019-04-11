//
//  DivFactory.swift
//  Pods
//
//  Created by Bartek Tułodziecki on 03/03/2017.
//
//

import Foundation

public struct DivFactory: TagGenerating {
    public func generateTag(content: String, range: NSRange, attributes: [NSAttributedString.Key : Any]) -> Tag? {
        let tagAttributes = HrefAttributeParser().parsed(attributes: attributes)
        return SwiftyHTMLConfiguration.anchorClass.init(value: content, range: range, attributes: tagAttributes)
    }
}
