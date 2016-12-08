//
//  HTMLNodeVisitor.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 07/12/2016.
//
//

import Foundation
import SwiftSoup

public class HTMLNodeVisitor: NodeVisitor {
    
    var mutableString = NSMutableAttributedString(string: "")
    
    public init() {}
    
    // Node visitor interface methods
    public func head(_ node: Node, _ depth: Int)throws {
        print("entering node: \(node.nodeName())")
        
        let factory = TagFactory.factory(htmlTag: node.nodeName())
        print("factory: \(factory)")
        
        if let attributes = node.getAttributes()?.asList() {
            for attribute in attributes {
                print("attribute: \(attribute.getKey()) - value: \(attribute.getValue())")
            }
        }
    }
    
    public func tail(_ node: Node, _ depth: Int)throws {
        print("exiting node: \(node.nodeName())")
    }
}
