//
//  RulesView.swift
//  Skwim
//
//  Created by TECH1 on 4/27/23.
//

import SwiftUI

struct RulesView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Safety First! Every player is to be respectful and conscious of teammates’ and opponents’ welfare. No swimming under the goals, other players, or official. Always play under lifeguard supervision.")
                Text("Game Play: Two teams (8 on 8 in full ­pool), two goals, one disk, and boundaries: The area of play is called the Lagoon, and is divided into 3 bays. Skwim Fins make the sport faster and easier for all ages.")
                Text("Limited Contact: Physical impact between players is discouraged. Play must be around an opponent, never through. No player can make contact with the goal. Offense cannot cross the goal perimeter.")
                Text("Service: Teams shake hands at mid-bay. The visiting team calls the disk-flip and chooses to serve or receive. Two, 20 minute halves; 5 minute overtime - first team to score 2 points wins.")
                Text("Skwimming: Offensive players in motion must have only intermittent disk contact (1 second or less, including lifts or spins), but if stationary can hold the disk for up to 3 seconds.")
                Text("Disk on Water: The disk must touch water, a) between offensive players; b) on any score shot; c) in the mid-bay when serving, passing, or shooting from the back-bay to the forward-bay.")
                Text("Scoring: 1 point for shots made from within the forward-bay, 2 points from the mid-bay, and 3 points for back-bay shots! The disk must be completely in the goal trap. If not, defending team gains possession.")
                Text("Off-Sides: In the forward-bay, an offensive player is disqualified if found behind the last defend%C2%AD%C2%ADer prior to the disk being played into that bay. An off-side player can re-qualify by coming back on-side.")
                Text("Goal Tending: Except for the goalie, defensive players cannot be closer to the goal than to an offensive player. Defenders may cross over the goal ramp to block a shot, but not touch or enter the trap.")
                Text("Violations: Swimming, Skwimming, passing or score attempts through an opponent's torso position; roughing a player or shooter, holding, delay of game, disputing a call, foul language, and unsportsmanlike conduct constitute a penalty.")
            }.navigationTitle("Basic SKWIM Rules")
        }.navigationViewStyle(.stack)
    }
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        RulesView()
    }
}
