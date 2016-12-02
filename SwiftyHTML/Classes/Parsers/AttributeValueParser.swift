//
//  AttributeValueParser.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 28/10/2016.
//
//

public protocol AttributeValueParser {
    func parsed(attributes: [String : Any]) -> [TagAttribute]
}
