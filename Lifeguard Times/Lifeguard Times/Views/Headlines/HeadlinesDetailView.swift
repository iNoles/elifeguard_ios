//
//  HeadlinesDetailView.swift
//  Lifeguard Times
//
//  Created by TECH1 on 5/4/23.
//

import SwiftUI

struct HeadlinesDetailView: View {
    private static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E, MMM d, yyyy h:mm a"
        return dateFormatter
    }()
    
    var feed: Feed
    
    init(feed: Feed) {
        self.feed = feed
    }
    
    var body: some View {
        NavigationView {
            List {
                AsyncImage(url: URL(string: feed.image!)) { image in
                    image
                } placeholder: {
                    ProgressView()
                }
                Text(feed.title!)
                Text("Published on \(Self.dateFormatter.string(from: (feed.date!)))")
                Text(feed.content?.stringByStrippingHTMLTags.stringByDecodingHTMLEntities ?? "")
            }
            .navigationTitle("Lifeguard Times")
        }.navigationViewStyle(.stack)
    }
}

/*struct HeadlinesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeadlinesDetailView()
    }
}*/
