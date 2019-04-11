//
//  ViewController.swift
//  SwiftyHTML
//
//  Created by Bartosz Tułodziecki on 10/19/2016.
//  Copyright (c) 2016 Bartosz Tułodziecki. All rights reserved.
//

import UIKit
import SwiftyHTML
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.textView.attributedText = TestAttributedStrings.stringWithMultipleAttributes
//        
//        let defaultStyle = Style.init(value: "font-family:apple-system, sans-serif; font-size:14px")
//        let htmlString = TestAttributedStrings.stringWithMultipleAttributes.toHTML(defaultStyle: defaultStyle)
//        self.webView.loadHTMLString(htmlString, baseURL: nil)
//        print("html string: \(htmlString)")
        
        // Test
        let htmlFile = Bundle.main.url(forResource: "AndroidHTML", withExtension: "html")!
//        let htmlFile = Bundle.main.url(forResource: "GRHTMLtemplate", withExtension: "html")!
        let contents = try! String(contentsOf: htmlFile, encoding: .utf8)
//        print("contents: \(contents)")
        
        let htmlData = contents.data(using: .utf8)!
        if let str = try? NSAttributedString.init(data: htmlData, options: convertToNSAttributedStringDocumentReadingOptionKeyDictionary([convertFromNSAttributedStringDocumentAttributeKey(NSAttributedString.DocumentAttributeKey.documentType) : convertFromNSAttributedStringDocumentType(NSAttributedString.DocumentType.html)]), documentAttributes: nil) {
            print(str)
            print("ATTRIBUTES: \(convertFromNSAttributedStringKeyDictionary(str.attributes(at: 0, longestEffectiveRange: nil, in: NSMakeRange(0, str.length))))")
            self.textView.attributedText = str
            // Original HTML
//            self.webView.loadHTMLString(contents, baseURL: nil)
            // Generated HTML from NSMutableAttributedString
            let mutableStr = NSMutableAttributedString.init(attributedString: str).toHTML()
            print("HTML: \(mutableStr)")
            self.webView.loadHTMLString(mutableStr, baseURL: nil)
        }
    }
}


// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToNSAttributedStringDocumentReadingOptionKeyDictionary(_ input: [String: Any]) -> [NSAttributedString.DocumentReadingOptionKey: Any] {
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.DocumentReadingOptionKey(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringDocumentAttributeKey(_ input: NSAttributedString.DocumentAttributeKey) -> String {
	return input.rawValue
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringDocumentType(_ input: NSAttributedString.DocumentType) -> String {
	return input.rawValue
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringKeyDictionary(_ input: [NSAttributedString.Key: Any]) -> [String: Any] {
	return Dictionary(uniqueKeysWithValues: input.map {key, value in (key.rawValue, value)})
}
