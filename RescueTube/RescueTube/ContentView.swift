//
//  ContentView.swift
//  RescueTube
//
//  Created by TECH1 on 4/20/23.
//

import SwiftUI

struct ContentView: View {
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
