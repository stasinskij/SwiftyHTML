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

class ViewController: UIViewController, XMLParserDelegate {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var webView: UIWebView!
    
    private var xmlParser: XMLParser! = nil
    
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
        if let str = try? NSAttributedString.init(data: htmlData, options: [NSDocumentTypeDocumentAttribute : NSHTMLTextDocumentType], documentAttributes: nil) {
            print(str)
            self.textView.attributedText = str
            // Original HTML
            self.webView.loadHTMLString(contents, baseURL: nil)
            // Generated HTML from NSMutableAttributedString
            let mutableStr = NSMutableAttributedString.init(attributedString: str).toHTML()
            self.webView.loadHTMLString(mutableStr, baseURL: nil)
        }
        
        
        self.xmlParser = XMLParser(data: htmlData)
        self.xmlParser.delegate = self
        self.xmlParser.parse()
    }
    
    // MARK: - XML parser delegate
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        print("did start element: \(elementName), qualified name: \(qName), attributes: \(attributeDict)")
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        print("did end element: \(elementName)")
    }
    
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        print("ERROR: \(parseError)")
    }
    
    func parserDidStartDocument(_ parser: XMLParser) {
        print("did start parsing")
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        print("did end parsing")
    }
}

