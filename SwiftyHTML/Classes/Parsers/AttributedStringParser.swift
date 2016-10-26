//
//  AttributedStringParser.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct AttributtedStringParser {
    
    func tagWith(string: String, range: NSRange, attributes: [String: Any]) -> Tag? {
        var tags = [Tag]()
        for (key, attribute) in attributes {
            let factory = TagFactory.create(forAttribute: key)
            if let tag = factory.generateTag(content: string, range: range, attributes: [attribute]) {
                tags.append(tag)
                print(tag.htmlString())
            }
        }

        return nil
    }
}
