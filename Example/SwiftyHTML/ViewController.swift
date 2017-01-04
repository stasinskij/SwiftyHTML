//
//  ViewController.swift
//  SwiftyHTML
//
//  Created by Bartosz Tułodziecki on 10/19/2016.
//  Copyright (c) 2016 Bartosz Tułodziecki. All rights reserved.
//

import UIKit
import SwiftyHTML

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
        print("contents: \(contents)")

        let htmlData = contents.data(using: .utf8)!
        
        // Testing HTMLParser with Kanna
        let parser = HTMLParser()
        if let parsedHtml = parser.parsed(htmlData: htmlData) {
            self.webView.loadHTMLString(parsedHtml, baseURL: nil)
        }
        
        
        let htmlData = contents.data(using: .utf8)!
        if let str = try? NSAttributedString.init(data: htmlData, options: [NSDocumentTypeDocumentAttribute : NSHTMLTextDocumentType], documentAttributes: nil) {
            print(str)
            self.textView.attributedText = str
            // Original HTML
            self.webView.loadHTMLString(contents, baseURL: nil)
            // Generated HTML from NSMutableAttributedString
            let mutableStr = NSMutableAttributedString.init(attributedString: str).toHTML()
            self.webView.loadHTMLString(mutableStr, baseURL: nil)
        }
    }
}

