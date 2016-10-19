//
//  Tag.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 19/10/2016.
//
//

protocol Tag: StringRepresentable {
    var name: String { get }
    var content: String { get set }
    var range: NSRange { get set }
    var attributes: [TagAttribute] { get set }
}
