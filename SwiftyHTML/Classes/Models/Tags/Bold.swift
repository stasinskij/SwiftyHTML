//
//  Bold.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 07/12/2016.
//
//

import Foundation

open class Bold: Tag {
    public var name: String = "b"
    open var value: String
    open var range: NSRange
    open var attributes: [TagAttribute]
    
    public required init(value: String, range: NSRange, attributes: [TagAttribute]) {
        self.value = value
        self.range = range
        self.attributes = attributes
    }
}
