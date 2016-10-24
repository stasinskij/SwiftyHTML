//
//  Anchor.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

public struct Anchor: Tag {
    public var name: String = "a"
    public var content: String
    public var range: NSRange
    public var attributes: [TagAttribute]
    
    public init(content: String, range: NSRange, attributes: [TagAttribute]) {
        self.content = content
        self.range = range
        self.attributes = attributes
    }
}
