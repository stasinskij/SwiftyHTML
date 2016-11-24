//
//  Href.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

open class Href: TagAttribute {
    public var name: String = "href"
    open var value: String
    
    public required init?(value: String) {
        guard let escapedString = value.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return nil }
        self.value = escapedString
    }

    // This needs to be implemented so that a subclass can override it.
    // Default TagAttribute implementation used otherwise.
    open func htmlString() -> String {
        return self.name + "=" + "\"\(self.value)\""
    }
}
