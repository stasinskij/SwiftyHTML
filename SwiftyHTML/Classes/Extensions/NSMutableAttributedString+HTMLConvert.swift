//
//  NSMutableAttributedString+HTMLConvert.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 19/10/2016.
//
//

public extension NSMutableAttributedString {
    
    func toHTML(defaultStyle: TagAttribute? = nil) -> String {
        let parser = AttributtedStringParser()
        var outputString = ""
        
        self.enumerateAttributes(in: NSMakeRange(0, self.length), options:.longestEffectiveRangeNotRequired) { (value, range, stop) in
            let substring = String(self.attributedSubstring(from: range).string).htmlSanitized()
            print("* >>\(substring)<< attributes value: \(value) - range: loc \(range.location), len \(range.length)")
            if let tag = parser.tagWith(string: substring, range: range, attributes: value) {
                outputString.append(tag.htmlString())
            }
            else {
                outputString.append(substring)
            }
        }
        
        if let defStyle = defaultStyle {
            let span = Span.init(value: outputString, range: NSMakeRange(0, self.length), attributes: [defStyle])
            return span.htmlString()
        }
        
        return outputString
    }
}
