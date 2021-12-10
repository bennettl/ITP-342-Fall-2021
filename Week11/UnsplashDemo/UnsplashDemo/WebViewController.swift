//
//  WebViewController.swift
//  UnsplashDemo
//
//  Created by lee bennett on 11/3/21.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate{
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://apple.com")!
        let request = URLRequest(url: url)
        mainWebView.load(request)
        
        mainWebView.navigationDelegate = self
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinner.isHidden = true
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        spinner.isHidden = true
    }
    
   
    
}
