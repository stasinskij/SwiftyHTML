//
//  DivAttributeParser.swift
//  Pods
//
//  Created by Bartek Tułodziecki on 03/03/2017.
//
//

import Foundation

public struct DivAttributeParser: AttributeValueParser {
    
    public func parsed(attributes: [NSAttributedString.Key : Any]) -> [TagAttribute] {
        return []
    }
}
