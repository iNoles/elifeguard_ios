//
//  PhotoView.swift
//  Lifeguard Times
//
//  Created by TECH1 on 5/4/23.
//

import SwiftUI

struct PhotoView: View {
    let webView = WebView()
    var body: some View {
        NavigationView {
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
                }.navigationTitle("Photos")
        }
        .navigationViewStyle(.stack)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
