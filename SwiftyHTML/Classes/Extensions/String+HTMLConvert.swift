//
//  String+HTMLConvert.swift
//  Pods
//
//  Created by Bartek Tułodziecki on 04/11/2016.
//
//

public extension String {
    
    func htmlSanitized() -> String {
        return self.replacingOccurrences(of: "\n", with: "<br>")
    }
}
