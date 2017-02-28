//
//  HTMLParser.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 21/12/2016.
//
//

import Foundation
import Kanna

public class HTMLParser {
    
    public init() {}
    
    public func parsed(html: String) -> String? {
        if let doc = HTML(html: html, encoding: .utf8) {
            print("HTML: \(doc.body?.toHTML)")
            return doc.body?.toHTML
        }
        
        return nil
    }
    
    public func parsed(htmlData: Data) -> String? {
        if let doc = HTML(html: htmlData, encoding: .utf8) {
            print("HTML: \(doc.body?.toHTML)")
//            _ = doc.body?.toAttributedString
//            let xpathObject = doc.body?.xpath("div")
//            let xpathHtml = xpathObject?.first?.toHTML
            
            let iterator = doc.xpath("body").makeIterator()
            iterator.forEach{ print($0) }
            
            return doc.body?.toHTML
        }
        
        return nil
    }
}
