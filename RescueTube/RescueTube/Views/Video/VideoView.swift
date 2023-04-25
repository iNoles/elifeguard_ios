//
//  VideoView.swift
//  RescueTube
//
//  Created by TECH1 on 4/20/23.
//

import SwiftUI

struct VideoView: View {
    @ObservedObject var viewModel = VideoViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.playlist, id: \.id) { item in
                Link(destination: URL(string: "https://www.youtube.com/watch?v=\(item.id!)")!, label: {
                    VideoListItem(playlist: item)
                })
            }.navigationTitle("Videos")
        }.onAppear {
            viewModel.parseSchedules()
        }.navigationViewStyle(.stack)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
