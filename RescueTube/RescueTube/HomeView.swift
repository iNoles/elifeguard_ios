//
//  ContentView.swift
//  RescueTube
//
//  Created by Jonathan Steele on 4/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                Text("LIFE™ Patrol Tube ")
                Text("LIFE™ Rescue Tube")
                Text("LIFE™ Max Rescue Tube")
                Text("LIFE™ UNIT")
                Text("Locations")
                Text("Maneuvers")
                Text("Shops")
            }.navigationTitle("LIFE™ Tube")
        }
    }
}

/*struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}*/
