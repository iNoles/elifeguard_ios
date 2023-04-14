//
//  TabMainView.swift
//  RescueTube
//
//  Created by Jonathan Steele on 4/11/23.
//

import SwiftUI

struct TabMainView: View {
    var body: some View {
        TabView {
            ForEach(TabModel.views, id: \.title) { model in
                model.destination
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        if (model.system) {
                            Image(systemName: model.image)
                        } else {
                            Image(model.image)
                        }
                        Text(model.title.uppercased())
                    }
            }
        }
    }
}

/*struct TabMainView_Previews: PreviewProvider {
    static var previews: some View {
        TabMainView()
    }
}*/
