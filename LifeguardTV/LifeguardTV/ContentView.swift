//
//  ContentView.swift
//  LifeguardTV
//
//  Created by TECH1 on 4/25/23.
//

import SwiftUI

struct ContentView: View {
    let webView = WebView()
    var body: some View {
        webView
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button(action: {
                        webView.goBack()
                    }, label: {
                        Image(systemName: "arrowshape.turn.up.backward")
                    })
                    Button(action: {
                        webView.goForward()
                    }, label: {
                        Image(systemName: "arrowshape.turn.up.right")
                    })
                    Spacer()
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
