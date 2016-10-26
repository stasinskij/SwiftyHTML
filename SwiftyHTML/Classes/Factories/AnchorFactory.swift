//
//  AnchorFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct AnchorFactory: TagGenerating {
    
    func generateTag(content: String, range: NSRange, attributes: [Any]) -> Tag? {
        print("should generate Anchor tag")
        return Anchor(content: content, range: range, attributes: [])
    }
}
