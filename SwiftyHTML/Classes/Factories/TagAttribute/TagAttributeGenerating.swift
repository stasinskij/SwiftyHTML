//
//  TagAttributeGenerating.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 28/10/2016.
//
//

public protocol TagAttributeGenerating {
    func generateTagAttributes(attributes: [Any]) -> [TagAttribute]
}
