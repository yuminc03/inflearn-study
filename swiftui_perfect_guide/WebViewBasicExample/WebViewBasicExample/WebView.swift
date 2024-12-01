//
//  WebView.swift
//  WebViewBasicExample
//
//  Created by Chu Yu Min on 2022/10/10.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {// UIViewRepresentable: UIView를 만들고 SwiftUI interface에 맞게 사용할 수 있게 함
    
    var url: String
    
    func makeUIView(context: Context) -> some UIView {
        
        let url = URL(string: self.url)
        let request = URLRequest(url: url!, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 10.0)
        
        let wkWebView = WKWebView()
        wkWebView.load(request)
        
        return wkWebView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

//UIViewController
struct MyWebVC: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        
        let webVC = WebViewController()
        let navi = UINavigationController(rootViewController: webVC)
        return navi
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
