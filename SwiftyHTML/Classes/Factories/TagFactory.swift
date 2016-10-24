//
//  TagFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct TagFactory {
    static func create(forAttribute: String) -> TagGenerating {
        switch forAttribute {
        case NSLinkAttributeName:
            return AnchorFactory()
        default:
            return ParagraphFactory()
        }
    }
}
