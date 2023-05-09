//
//  HeadlinesViewModel.swift
//  Lifeguard Times
//
//  Created by TECH1 on 5/4/23.
//

import Foundation
import Combine

class HeadlinesViewModel : ObservableObject {
    private var loadCancellable: Cancellable?
    
    @Published private(set) var feed = [Feed]()

    func parseSchedules(category: String) {
        let url = URL(string: "https://www.lifeguardtimes.com/category/\(category)/feed/rss2")!
        loadCancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { (data, _) -> [Feed] in
                let parser = WordPressXMLParser()
                parser.parseXML(data: data)
                return parser.list
            }
            .replaceError(with: [])
            .receive(on: RunLoop.main)
            .assign(to: \.feed, on: self)
    }
}
