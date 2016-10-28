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
    
    public init?(value: String) {
        self.value = value
    }
}
