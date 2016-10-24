//
//  NSMutableAttributedString+HTMLConvert.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 19/10/2016.
//
//

public extension NSMutableAttributedString {
    
    func toHTML() -> String {
        let parser = AttributtedStringParser()
        var outputString = ""
        
        self.enumerateAttributes(in: NSMakeRange(0, self.length), options:.longestEffectiveRangeNotRequired) { (value, range, stop) in
            print("attribute value: \(value) - range: loc \(range.location), len \(range.length)")
        }
        return ""
    }
}
