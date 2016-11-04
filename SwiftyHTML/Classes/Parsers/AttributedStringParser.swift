//
//  AttributedStringParser.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct AttributtedStringParser {
    
    func tagWith(string: String, range: NSRange, attributes: [String: Any]) -> Tag? {
        let factory = TagFactory.factory(attributes: attributes)
        let tag = factory.generateTag(content: string, range: range, attributes: attributes)
        print("GENERATED TAG: \(tag)\n")
        return tag
    }
}
