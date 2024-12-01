//
//  WebViewController.swift
//  WebViewJSBridgeExample
//
//  Created by Chu Yu Min on 2022/10/10.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        let contentController = WKUserContentController()
        contentController.add(self, name: "iPhoneInfo")
        let configulation = WKWebViewConfiguration()
        configulation.userContentController = contentController
        
        webView = WKWebView(frame: self.view.bounds, configuration: configulation)
        if let webView = webView {
            webView.translatesAutoresizingMaskIntoConstraints = false
            webView.navigationDelegate = self
            webView.uiDelegate = self
            self.view.addSubview(webView)
            
            let localFile = Bundle.main.path(forResource: "TestWeb", ofType: "html")
            let url = URL(fileURLWithPath: localFile!)
            let request = URLRequest(url: url)
            webView.load(request)
            
        }
    }
    
    
}

extension WebViewController: WKScriptMessageHandler {
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        print("message name: \(message.name)")
        if message.name == "iPhoneInfo" {
            print("call native")
        }
    }
}

extension WebViewController: WKNavigationDelegate {
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("load finish")
        webView.evaluateJavaScript("showAlert('hi')", completionHandler: nil)
    }
}

extension WebViewController: WKUIDelegate {
    
    func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void) {
        
        let alert = UIAlertController(title: "js test", message: message, preferredStyle: .alert)
        let doneAction = UIAlertAction(title: "확인", style: .default) { _ in
            completionHandler()
        }
        alert.addAction(doneAction)
        self.present(alert, animated: true, completion: nil)
    }
}
