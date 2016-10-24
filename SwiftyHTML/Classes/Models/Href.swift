//
//  Href.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

public struct Href: TagAttribute {
    public var name: String = "href"
    public var value: String
    
    public init?(value: String) {
        guard let escapedString = value.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return nil }
        self.value = escapedString
    }
}
