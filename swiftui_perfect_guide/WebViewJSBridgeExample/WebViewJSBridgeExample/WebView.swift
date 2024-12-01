//
//  WebView.swift
//  WebViewJSBridgeExample
//
//  Created by Chu Yu Min on 2022/10/10.
//

import WebKit
import SwiftUI

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
