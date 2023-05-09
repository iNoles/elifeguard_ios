//
//  WebView.swift
//  LifeguardTV
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
        uiView.load(URLRequest(url: URL(string: "https://www.lifeguardtimes.com/photo-albums/")!))
    }
    
    func goBack() {
        webview.goBack()
    }

    func goForward() {
        webview.goForward()
    }
}
