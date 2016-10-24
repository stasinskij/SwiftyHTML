//
//  Anchor.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct Anchor: Tag {
    var name: String = "a"
    var content: String
    var range: NSRange
    var attributes: [TagAttribute]
    
    init(content: String, range: NSRange, attributes: [TagAttribute]) {
        self.content = content
        self.range = range
        self.attributes = attributes
    }
}
