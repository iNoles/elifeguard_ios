//
//  PhotoThumbnailView.swift
//  RescueTube
//
//  Created by TECH1 on 4/20/23.
//

import SwiftUI

struct PhotoGridItemView: View {
    let url: URL

    var body: some View {
        ZStack {
            GeometryReader { proxy in
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(
                            width: proxy.size.width,
                            height: proxy.size.width
                        )
                        .clipped()
                } placeholder: {
                    ProgressView()
                }
            }
            // We'll also make sure that the photo will
            // be square
            .aspectRatio(1, contentMode: .fit)
        }
    }
}

/*struct PhotoGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        if let url = Bundle.main.url(forResource: "mushy1", withExtension: "jpg") {
            GridItemView(size: 50, url: url)
        }
    }
}*/
