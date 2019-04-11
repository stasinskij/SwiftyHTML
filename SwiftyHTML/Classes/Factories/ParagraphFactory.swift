//
//  ParagraphFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

import Foundation

public struct ParagraphFactory: TagGenerating {
    
    public func generateTag(content: String, range: NSRange, attributes: [NSAttributedString.Key : Any]) -> Tag? {
        return nil
    }
}
