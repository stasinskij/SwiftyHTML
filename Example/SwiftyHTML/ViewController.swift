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
        
        self.textView.attributedText = TestHtml.multipleAttributesStringWithLink
        
        let defaultStyle = Style.init(value: "font-family:apple-system, sans-serif; font-size:14px")
        let htmlString = TestHtml.multipleAttributesStringWithLink.toHTML(defaultStyle: defaultStyle)
        self.webView.loadHTMLString(htmlString, baseURL: nil)
        print("html string: \(htmlString)")
    }
}

