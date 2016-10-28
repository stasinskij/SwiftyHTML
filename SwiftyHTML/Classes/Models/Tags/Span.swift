//
//  Span.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 28/10/2016.
//
//

public struct Span: Tag {
    public var name: String = "span"
    public var content: String
    public var range: NSRange
    public var attributes: [TagAttribute]
    
    public init(content: String, range: NSRange, attributes: [TagAttribute]) {
        self.content = content
        self.range = range
        self.attributes = attributes
    }
}
