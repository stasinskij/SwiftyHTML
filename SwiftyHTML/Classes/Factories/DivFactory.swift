//
//  DivFactory.swift
//  Pods
//
//  Created by Bartek Tułodziecki on 03/03/2017.
//
//

import Foundation

public struct DivFactory: TagGenerating {
    public func generateTag(content: String, range: NSRange, attributes: [String : Any]) -> Tag? {
        print("should generate Div tag\n")
        let tagAttributes = HrefAttributeParser().parsed(attributes: attributes)
        return SwiftyHTMLConfiguration.anchorClass.init(value: content, range: range, attributes: tagAttributes)
    }
}
