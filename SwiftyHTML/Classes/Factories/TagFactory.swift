//
//  TagFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

import UIKit

public struct TagFactory {
    
    public static func factory(attributes: [NSAttributedString.Key : Any]) -> TagGenerating {
        if attributes.keys.contains(NSAttributedString.Key.link) {
            return AnchorFactory()
        }
        else if attributes.keys.contains(NSAttributedString.Key.foregroundColor) ||
            attributes.keys.contains(NSAttributedString.Key.font) ||
            attributes.keys.contains(NSAttributedString.Key.backgroundColor) ||
            attributes.keys.contains(NSAttributedString.Key.underlineStyle) ||
            attributes.keys.contains(NSAttributedString.Key.strikethroughStyle) {
            return SpanFactory()
        }
        else {
            return ParagraphFactory()
        }
    }
    
    public static func factory(htmlTag: String) -> TagGenerating {
        switch htmlTag {
        case "a":
            return AnchorFactory()
        case "span":
            return SpanFactory()
        default:
            return ParagraphFactory()
        }
    }
}
