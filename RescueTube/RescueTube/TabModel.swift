//
//  TabModel.swift
//  RescueTube
//
//  Created by Jonathan Steele on 4/11/23.
//

import SwiftUI

struct TabModel {
    var title: String
    var image: String
    var destination: AnyView
    var system: Bool
    
    init<V>(title: String, image: String, system: Bool, destination: V) where V: View {
        self.title = title
        self.image = image
        self.system = system
        self.destination = AnyView(destination)
    }

    static var views: [TabModel] {
        let models = [
            TabModel(
                title: "Home",
                image: "house.fill",
                system: true,
                destination: HomeView()
            ),
            TabModel(
                title: "Product",
                image: "info.circle.fill",
                system: true,
                destination: ProductView()
            ),
            TabModel(
                title: "Videos",
                image: "video_library",
                system: false,
                destination: VideosView()
            )
        ]
        return models
    }
}
