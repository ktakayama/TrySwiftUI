//
//  WebView.swift
//  TrySwiftUI
//
//  Created by Kyosuke Takayama on 2021/07/13.
//

import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    var url: URL

    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView(frame: .zero)
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let req = URLRequest(url: url)
        uiView.load(req)
    }
}
