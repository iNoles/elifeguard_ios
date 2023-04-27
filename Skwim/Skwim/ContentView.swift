//
//  ContentView.swift
//  Skwim
//
//  Created by TECH1 on 4/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Label("Home", systemImage: "house")
            }
            VideoView().tabItem {
                Label("Videos", image: "video_library")
            }
            PhotoView().tabItem {
                Label("Photo", systemImage: "photo")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
