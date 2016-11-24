//
//  Tag.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 19/10/2016.
//
//

public protocol Tag: HTMLStringRepresentable {
    var name: String { get }
    var value: String { get set }
    var range: NSRange { get set }
    var attributes: [TagAttribute] { get set }
    
    init(value: String, range: NSRange, attributes: [TagAttribute])
}

extension Tag {
    
    public func htmlString() -> String {
        let appendAttribute: (String, TagAttribute) -> String = { input, atr in
            input + " " + atr.htmlString()
        }
        return "<\(self.name)\(self.attributes.reduce("", appendAttribute))>\(self.value)</\(self.name)>"
    }
}
