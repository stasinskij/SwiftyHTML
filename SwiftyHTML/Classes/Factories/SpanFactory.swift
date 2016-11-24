//
//  SpanFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct SpanFactory: TagGenerating {
    
    func generateTag(content: String, range: NSRange, attributes: [String : Any]) -> Tag? {
        print("should generate Span tag\n")
        let styleAttributes = StyleAttributeParser().parsed(attributes: attributes)
        return SwiftyHTMLConfiguration.spanClass.init(value: content, range: range, attributes: styleAttributes)
    }
}
