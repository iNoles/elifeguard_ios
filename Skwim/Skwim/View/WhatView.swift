//
//  WhatView.swift
//  Skwim
//
//  Created by TECH1 on 4/27/23.
//

import SwiftUI

struct WhatView: View {
    var body: some View {
        NavigationView {
            List {
                Text("SKWIM™ is a brand new, fun, fast-paced surface water-disk sport that is easy to learn and play. People of all ages and swimming ability can get in the water, pick up the rules and have a blast.")
                Text("The game is played with a soft foam disk that skims across the surface of the water. Team members, swimming with special fins, pass the disk to one another and can score by skimming the disk into the center trap of their opponent’s floating goal. The goal is circular and allows players to score from 360°.")
                Text("SKWIM™ is suitable for most swim-safe pools, lakes, and other types of calm open water.  It’s easy to get SKWIM™ started in your area. We’ve found that a 25 meter pool is a suitable size for recreational games, but SKWIM™ can be played in an Olympic sized pool as well.")
                Text("Unlike other team water sports, SKWIM™ can be played in varying depths of water, allowing players of different swimming abilities to participate. Players are encouraged to wear SKWIM™ fins. SKWIM™ fins are easy to get used to and will allow players to swim for a longer duration of time. If you enjoy being in the water, then there is a place on a SKWIM™ team for you!")
                Text("SKWIM™ can be played in almost any body of water (open water, pool, or waterpark).  For locations with professional SKWIM™ equipment and/or programs, click the Locations tab on the Main page to find the location nearest you.")
            }.navigationTitle("What is SKWIM?")
        }.navigationViewStyle(.stack)
    }
}

struct WhatView_Previews: PreviewProvider {
    static var previews: some View {
        WhatView()
    }
}
