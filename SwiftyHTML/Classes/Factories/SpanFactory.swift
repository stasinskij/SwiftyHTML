//
//  SpanFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct SpanFactory: TagGenerating {
    
    func generateTag(content: String, range: NSRange, attributes: [Any]) -> Tag? {
        print("should generate Span tag")
        return nil
    }
}
