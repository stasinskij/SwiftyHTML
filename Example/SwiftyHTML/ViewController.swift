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

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    private lazy var linkString: NSMutableAttributedString = {
        let prefix = "A "
        let urlString = "Google link"
        let suffix = " string"
        let inputString = NSString(string: prefix + urlString + suffix)
        
        let str = NSMutableAttributedString(string: inputString as String)
        
        
        str.addAttribute(NSLinkAttributeName, value: NSURL.init(string: "https://www.google.com"), range: inputString.range(of: urlString, options: .caseInsensitive))
        str.addAttribute(NSForegroundColorAttributeName, value: UIColor.red, range: inputString.range(of: prefix, options: .caseInsensitive))
        str.addAttribute(NSFontAttributeName, value: UIFont.boldSystemFont(ofSize: 24), range: inputString.range(of: suffix, options: .caseInsensitive))
        return str
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textView.attributedText = self.linkString
        
        _ = self.linkString.toHTML()
    }
    
    // MARK: TextView Delegate methods
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool {
        UIApplication.shared.openURL(URL)
        return false
    }
}

