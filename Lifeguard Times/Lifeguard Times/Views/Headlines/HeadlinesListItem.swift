//
//  HeadlinesListItem.swift
//  Lifeguard Times
//
//  Created by TECH1 on 5/4/23.
//

import SwiftUI

struct HeadlinesListItem: View {
    private let feed: Feed
    
    private static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E, MMM d, yyyy h:mm a"
        return dateFormatter
    }()
    
    init(feed: Feed) {
        self.feed = feed
    }
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: feed.image!)!) { image in
                image.resizable().frame(width: 64.0, height: 64.0)
                
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(feed.title!).font(.headline)
                Text(Self.dateFormatter.string(from: feed.date!)).font(.subheadline)
            }
        }
    }
}

/*struct HeadlinesListItem_Previews: PreviewProvider {
    static var previews: some View {
        HeadlinesListItem()
    }
}*/
