//
//  Tag.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 19/10/2016.
//
//

public protocol Tag: StringRepresentable {
    var name: String { get }
    var content: String { get set }
    var range: NSRange { get set }
    var attributes: [TagAttribute] { get set }
    
    init(content: String, range: NSRange, attributes: [TagAttribute])
}

extension Tag {
    
    public func stringRepresentation() -> String {
        return "<\(self.name) \(self.attributes.map{ $0.stringRepresentation() })>\(self.content)</\(self.name)>"
    }
}
