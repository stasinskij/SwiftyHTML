//
//  Style.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 28/10/2016.
//
//

public struct Style: TagAttribute {
    public var name: String = "style"
    public var value: String
    public var font: UIFont?
    public var color: UIColor?
    public var backgroundColor: UIColor?
    public var textAlignment: NSTextAlignment?
    
    public init?(value: String) {
        self.value = value
    }
    
    public init() {
        self.value = "Test value for style"
    }
}
