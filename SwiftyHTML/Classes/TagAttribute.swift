//
//  TagAttribute.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 19/10/2016.
//
//

protocol TagAttribute: StringRepresentable {
    var name: String { get }
    var value: String { get set }
}

extension TagAttribute {
    
    func stringRepresentation() -> String {
        return self.name + "=" + self.value
    }
}
