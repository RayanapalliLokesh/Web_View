//
//  WebView.swift
//  Lokesh CA2
//
//  Created by Student on 18/11/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit
import WebKit


class WebView: UIViewController {
    
    var NSE=String()

    @IBOutlet var myweb: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ur.text=NSE

//        let url = URL(string: NSE)
//        myweb.load(URLRequest(url: url!))
    }
    
    
    @IBAction func back(_ sender: Any) {
        myweb.goBack()
    }
    
    
    @IBAction func refresh(_ sender: Any) {
        myweb.reload()
    }
    
    
    
    @IBAction func prev(_ sender: Any) {
        myweb.goForward()
    }
    
    
    @IBAction func ld(_ sender: Any) {
        
        let url = URL(string: NSE)
        myweb.load(URLRequest(url: url!))
        
    }
    
    
    @IBOutlet var ur: UILabel!
    
    
}
