//
//  TagAttribute.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 19/10/2016.
//
//

public protocol TagAttribute: StringRepresentable {
    var name: String { get }
    var value: String { get set }
    
    init?(value: String)
}

extension TagAttribute {
    
    public func stringRepresentation() -> String {
        return self.name + "=" + "\(self.value)"
    }
}
