//
//  WebViewController.swift
//  WebViewBasicExample
//
//  Created by Chu Yu Min on 2022/10/10.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    let webview = WKWebView(frame: .zero)
    var url = "https://apple.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setConstraints()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        
        webview.translatesAutoresizingMaskIntoConstraints = false
        webview.backgroundColor = .clear
        webview.navigationDelegate = self
        webview.load(URLRequest(url: URL(string: url)!))
        self.view.addSubview(webview)
        
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            webview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            webview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            webview.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            webview.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension WebViewController: WKNavigationDelegate {
    
    ///WebView가 load완료되었을 때
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        //get webview title
        print("loaded")
        self.webview.evaluateJavaScript("document.title") { (result, error) in
            
            self.navigationItem.title = result as? String
        }
    }
}
