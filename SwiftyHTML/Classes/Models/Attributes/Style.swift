//
//  Style.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 28/10/2016.
//
//

open class Style: TagAttribute {
    private let TextDecorationKey = "text-decoration:"
    private let FontWeightKey = "font-weight:"
    private let FontStyleKey = "font-style:"
    
    public var name: String = "style"
    open var value: String
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
    public var underline: Bool? {
        didSet {
            self.value = self.computedValue()
        }
    }
    public var strikethrough: Bool? {
        didSet {
            self.value = self.computedValue()
        }
    }
    public var textAlignment: NSTextAlignment? {
        didSet {
            self.value = self.computedValue()
        }
    }
    
    public required init?(value: String) {
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
        
        if let underline = self.underline, underline == true {
            str += "text-decoration:underline;"
        }
        
        if let strikethrough = self.strikethrough, strikethrough == true {
            if str.contains(TextDecorationKey) {
                str.insert(contentsOf: " line-through".characters, at: str.index(str.endIndex, offsetBy: -1))
            }
            else {
                str += "text-decoration:line-through;"
            }
        }
        
        if let alignment = self.textAlignment {
            switch alignment {
            case .left:
                str += "text-align:left; display:block;"
            case .center:
                str += "text-align:center; display:block;"
            case .right:
                str += "text-align:right; display:block;"
            case .justified:
                str += "text-align:justify; display:block;"
            default:
                str += ""
            }
        }
        
        return str
    }
    
    private func getFontAttributes(font: UIFont) -> String {
        var str = ""
        
        str += "font-family:\(font.fontName); font-size:\(Int(font.pointSize))px;"
        str += FontWeightKey + (font.isBold ? "bold;" : "normal;")
        
        if font.isItalic {
            str += FontStyleKey + "italic;"
        }
        
        return str
    }
}
