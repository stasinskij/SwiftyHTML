//
//  Style.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 28/10/2016.
//
//

public struct Style: TagAttribute {
    public var name: String = "style"
    public var value: String
    public var font: UIFont? {
        didSet {
            self.value = self.computedValue()
        }
    }
    public var color: UIColor? {
        didSet {
            self.value = self.computedValue()
        }
    }
    public var backgroundColor: UIColor? {
        didSet {
            self.value = self.computedValue()
        }
    }
    public var textAlignment: NSTextAlignment?
    
    public init?(value: String) {
        self.value = value
    }
    
    public init() {
        self.value = ""
    }
    
    private func computedValue() -> String {
        var str = ""
        
        if let color = self.color, let rgb = color.rgb() {
            str += "color:rgb(\(rgb.red),\(rgb.green),\(rgb.blue));"
        }
        
        if let bgColor = self.backgroundColor, let rgb = bgColor.rgb() {
            str += "background-color:rgb(\(rgb.red),\(rgb.green),\(rgb.blue));"
        }
        
        if let font = self.font {
            str += self.getFontAttributes(font: font)
        }
        
        return str
    }
    
    private func getFontAttributes(font: UIFont) -> String {
        var str = ""
        
        str += "font-family:\(font.fontName); font-size:\(Int(font.pointSize))px;"
        
        if font.isBold {
            str += "font-weight:bold"
        }
        else if font.isItalic {
            str += "font-weight:italic"
        }
        else {
            str += "font-weight:normal"
        }
        
        return str
    }
}
