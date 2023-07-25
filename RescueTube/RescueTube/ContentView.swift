//
//  ContentView.swift
//  RescueTube
//
//  Created by TECH1 on 4/20/23.
//

import SwiftUI
import StoreKit

struct ContentView: View {
    @Environment(\.requestReview) var requestReview
    @AppStorage("openCount") private var openCount = 0
    
    var body: some View {
        TabView {
            HomeView().tabItem {
                Label("Home", systemImage: "house")
            }
            ProductView().tabItem {
                Label("Product", systemImage: "info")
            }
            VideoView().tabItem {
                Label("Videos", image: "video_library")
            }
        }.onAppear(perform: {
            openCount += 1
            if openCount == 5 {
                requestReview()
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
