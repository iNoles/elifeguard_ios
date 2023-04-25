//
//  ManeuversView.swift
//  RescueTube
//
//  Created by TECH1 on 3/14/23.
//

import SwiftUI

struct ManeuversView: View {
    var body: some View {
        NavigationView {
            List {
                Image(uiImage: UIImage(named: "manuvers1t.jpg")!).resizable()
                Image(uiImage: UIImage(named: "manuvers2t.jpg")!).resizable()
                Image(uiImage: UIImage(named: "manuvers3t.jpg")!).resizable()
                Image(uiImage: UIImage(named: "manuvers4t.jpg")!).resizable()
                Image(uiImage: UIImage(named: "manuvers5t.jpg")!).resizable()
                Spacer()
            }
            .navigationTitle("Maneuvers")
        }.navigationViewStyle(.stack)
    }
}

struct ManeuversView_Previews: PreviewProvider {
    static var previews: some View {
        ManeuversView()
    }
}
