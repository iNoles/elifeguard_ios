//
//  HomeView.swift
//  Skwim
//
//  Created by TECH1 on 4/27/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: WhatView(), label: { Text("What is SKWIM™?") })
                NavigationLink(destination: WhyView(), label: { Text("Why is SKWIM™?") })
                NavigationLink(destination: RulesView(), label: { Text("Rules") })
                NavigationLink(destination: LocationView(), label: { Text("Locations") })
                Link(
                    destination: URL(string: "https://www.elifeguard.com/skwim")!,
                    label: { Text("Shop") }
                )
            }.navigationTitle("SKWIM")
            Text("Select the options")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
