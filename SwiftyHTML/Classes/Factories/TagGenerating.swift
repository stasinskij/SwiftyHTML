//
//  TagGenerating.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

public protocol TagGenerating {
    func generateTag(content: String, range: NSRange, attributes: [String : Any]) -> Tag?
}
