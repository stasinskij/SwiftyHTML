//
//  AttributedStringParser.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct AttributtedStringParser {
    
    func tagWith(string: String, range: NSRange, attributes: [String: Any]) -> Tag? {

        return nil
    }
    
    private func proposedTagWith(attributes: [String : Any]) -> Tag? {
        if !attributes.keys.contains(NSLinkAttributeName) {
            return Span.init(content: <#T##String#>, range: <#T##NSRange#>, attributes: <#T##[TagAttribute]#>)
        }
        
        return nil
    }
}
