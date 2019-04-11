//
//  TagGenerating.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

import Foundation

public protocol TagGenerating {
    // Generate tag with NSAttributedString attributes
    func generateTag(content: String, range: NSRange, attributes: [NSAttributedString.Key : Any]) -> Tag?
}
