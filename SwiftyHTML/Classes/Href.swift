//
//  Href.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct Href: TagAttribute {
    var name: String = "href"
    var value: String
    
    init?(value: String) {
        guard let escapedString = value.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return nil }
        self.value = escapedString
    }
}
