//
//  AnchorFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct AnchorFactory: TagGenerating {
    
    func generateTag(content: String, range: NSRange, attributes: [String : Any]) -> Tag? {
        print("should generate Anchor tag\n")
        var hrefParser = HrefAttributeParser()
        let tagAttributes = hrefParser.parsed(attributes: attributes)
        return Anchor(content: content, range: range, attributes: tagAttributes)
    }
}
