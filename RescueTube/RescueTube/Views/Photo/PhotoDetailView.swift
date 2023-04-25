//
//  PhotoDetailView.swift
//  RescueTube
//
//  Created by TECH1 on 4/20/23.
//

import SwiftUI

struct PhotoDetailView: View {
    @State var selection: Int = 0
    var urls: [URL]
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(Array(urls.enumerated()), id: \.offset) { index, item in
                GeometryReader { proxy in
                    AsyncImage(url: item) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: proxy.size.width)
                            .frame(maxHeight: .infinity)
                            .tag(index)
                    } placeholder: {
                        ProgressView()
                    }
                }
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

/*struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView()
    }
}*/
