//
//  Span.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 28/10/2016.
//
//

open class Span: Tag {
    public var name: String = "span"
    open var value: String
    open var range: NSRange
    open var attributes: [TagAttribute]
    
    public required init(value: String, range: NSRange, attributes: [TagAttribute]) {
        self.value = value
        self.range = range
        self.attributes = attributes
    }
}
