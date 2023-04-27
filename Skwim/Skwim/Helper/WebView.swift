//
//  WebView.swift
//  eLifeguard
//
//  Created by TECH1 on 4/25/23.
//

import UIKit
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    private let webview = WKWebView()
    
    func makeUIView(context: Context) -> WKWebView {
        return webview
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "why_skwim", ofType: "html")!)
        uiView.loadFileURL(url, allowingReadAccessTo: url)
    }
    
    func goBack() {
        webview.goBack()
    }

    func goForward() {
        webview.goForward()
    }
}
