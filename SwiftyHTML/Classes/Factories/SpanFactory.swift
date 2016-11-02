//
//  SpanFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct SpanFactory: TagGenerating {
    
    func generateTag(content: String, range: NSRange, attributes: [String : Any]) -> Tag? {
        print("should generate Span tag")
        return Span.init(content: content, range: range, attributes: [])
    }
}
