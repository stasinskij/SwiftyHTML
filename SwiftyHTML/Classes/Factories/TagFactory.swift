//
//  TagFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

import UIKit

public struct TagFactory {
    
    public static func factory(attributes: [String : Any]) -> TagGenerating {
        if attributes.keys.contains(NSLinkAttributeName) {
            return AnchorFactory()
        }
        else if attributes.keys.contains(NSForegroundColorAttributeName) ||
            attributes.keys.contains(NSFontAttributeName) ||
            attributes.keys.contains(NSBackgroundColorAttributeName) {
            return SpanFactory()
        }
        else {
            return ParagraphFactory()
        }
    }
}
