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
        
        
        str.addAttribute(NSLinkAttributeName, value: NSURL.init(string: "https://www.google.com")!, range: inputString.range(of: urlString, options: .caseInsensitive))
//        str.addAttribute(NSForegroundColorAttributeName, value: UIColor.red, range: inputString.range(of: prefix, options: .caseInsensitive))
        str.addAttribute(NSForegroundColorAttributeName, value: UIColor.red, range: NSMakeRange(0, 4))
        str.addAttribute(NSFontAttributeName, value: UIFont.boldSystemFont(ofSize: 16), range: NSMakeRange(0, 4))
        str.addAttribute(NSFontAttributeName, value: UIFont.boldSystemFont(ofSize: 24), range: inputString.range(of: suffix, options: .caseInsensitive))
        str.addAttribute(NSBackgroundColorAttributeName, value: UIColor.green, range: inputString.range(of: suffix, options: .caseInsensitive))
        
        let appendedString = NSMutableAttributedString(string: "\nbla bla bla")
        appendedString.addAttribute(NSFontAttributeName, value: UIFont.init(name: "Palatino-Roman", size: 16.0)!, range: NSMakeRange(0, appendedString.length))
//        appendedString.addAttribute(NSFontAttributeName, value: UIFont.italicSystemFont(ofSize: 16.0), range: NSMakeRange(0, appendedString.length))
        
        str.append(appendedString)
        return str
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textView.attributedText = self.linkString
        
        self.linkString.enumerateAttributes(in: NSMakeRange(0, self.linkString.length), options: .longestEffectiveRangeNotRequired) { (attributes, range, stop) in
            for (_, attribute) in attributes {
                if attribute is UIFont {
                    print((attribute as! UIFont).familyName)
                    print((attribute as! UIFont).fontName)
//                    print((attribute as! UIFont).fontDescriptor)
//                    print((attribute as! UIFont).fontDescriptor.object(forKey: UIFontDescriptorTraitsAttribute))
                    print("\(attribute) is bold? \((attribute as! UIFont).isBold)")
                    print("\(attribute) is italic? \((attribute as! UIFont).isItalic)")
                }
            }
        }
        
        let htmlString = self.linkString.toHTML()
        print("html string: \(htmlString)")
    }
    
    // MARK: TextView Delegate methods
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange) -> Bool {
        UIApplication.shared.openURL(URL)
        return false
    }
}

