//
//  ContentView.swift
//  Lifeguard Times
//
//  Created by TECH1 on 5/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HeadlinesView().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            PhotoView().tabItem {
                Label("Photo", systemImage: "photo.fill")
            }
            StoryView().tabItem {
                Label("Story", systemImage: "doc.fill")
            }
            VideoView().tabItem {
                Label("Video", image: "video_library")
            }
        }
    }
}

/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/
