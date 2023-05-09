//
//  VideoViewModel.swift
//  RescueTube
//
//  Created by TECH1 on 4/20/23.
//

import Foundation
import Combine

class VideoViewModel : ObservableObject {
    private var loadCancellable: Cancellable?
    
    @Published private(set) var playlist = [Playlist]()

    func parseSchedules() {
        let url = URL(string: "https://www.youtube.com/feeds/videos.xml?playlist_id=PLAxM585vdRkMjOua-V2-7gcMo_RF9-U3j")!
        loadCancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { (data, _) -> [Playlist] in
                let parser = YoutubeXMLParser()
                parser.parseXML(data: data)
                return parser.list
            }
            .replaceError(with: [])
            .receive(on: RunLoop.main)
            .assign(to: \.playlist, on: self)
    }
}
