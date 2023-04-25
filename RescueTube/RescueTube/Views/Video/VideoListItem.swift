//
//  VideoListItem.swift
//  RescueTube
//
//  Created by TECH1 on 4/20/23.
//

import SwiftUI

struct VideoListItem: View {
    private let playlist: Playlist
    
    init(playlist: Playlist) {
        self.playlist = playlist
    }
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: playlist.thumbNail!)!) { image in
                image.resizable().frame(width: 64.0, height: 64.0)
                
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(playlist.title!).font(.headline)
                Text(playlist.date!).font(.subheadline)
            }
        }
    }
}

/*struct VideoListItem_Previews: PreviewProvider {
    static var previews: some View {
        VideoListItem()
    }
}*/
