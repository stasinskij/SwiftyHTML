//
//  ViewController.swift
//  SwiftyHTML
//
//  Created by Bartosz Tułodziecki on 10/19/2016.
//  Copyright (c) 2016 Bartosz Tułodziecki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private lazy var linkString: NSMutableAttributedString = {
        let str = NSMutableAttributedString(string: "A Google link string")
        str.addAttribute(NSLinkAttributeName, value: "https://www.google.com", range: NSMakeRange(0, str.length))
        return str
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

