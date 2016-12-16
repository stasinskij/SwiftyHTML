//
//  Alt.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 16/12/2016.
//
//

import Foundation

open class Alt: TagAttribute {
    public static var AltAttributeName = "AltAttributeName"
    public var name: String = "alt"
    open var value: String
    
    public var attributedString: NSMutableAttributedString? {
        return NSMutableAttributedString(string: self.value, attributes: [Alt.AltAttributeName : self.value])
    }
    
    public required init?(value: String) {
        self.value = value
    }
}
