//
//  ContentView.swift
//  Lifeguard Times
//
//  Created by TECH1 on 5/4/23.
//

import SwiftUI
import StoreKit

struct ContentView: View {
    @Environment(\.requestReview) var requestReview
    @AppStorage("openCount") private var openCount = 0
    
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
        }.onAppear(perform: {
            openCount += 1
            if openCount == 5 {
                requestReview()
            }
        })
    }
}

/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/
