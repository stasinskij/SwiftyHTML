//
//  UIFont+Convenience.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 27/10/2016.
//
//

public extension UIFont {
    
    var isBold: Bool {
        return self.fontDescriptor.symbolicTraits.contains(.traitBold)
    }
    
    var isItalic: Bool {
        return self.fontDescriptor.symbolicTraits.contains(.traitItalic)
    }
    
    // Doesn't seem to work...
//    var isSansSerif: Bool {
//        return self.fontDescriptor.symbolicTraits.contains(.classSansSerif)
//    }
}
