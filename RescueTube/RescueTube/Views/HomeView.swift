//
//  ContentView.swift
//  RescueTube
//
//  Created by TECH1 on 4/18/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ProductsView(
                    title: "LIFE Patrol Tube",
                    image: "mactubemeasurementsmall.jpg",
                    weight: "2.5 lb",
                    sku: "145"
                ), label: { Text("LIFE Patrol Tube") })
                NavigationLink(destination: ProductsView(
                    title: "LIFE™ Rescue Tube",
                    image: "mactubemeasurements.jpg",
                    weight: "3 lb",
                    sku: "175"), label: { Text("LIFE Rescue Tube") })
                NavigationLink(destination: ProductsView(
                    title: "LIFE Max Rescue Tube",
                    image: "mactubemeasurementsmax.jpg",
                    weight: "4 lb",
                    sku: "195"), label: { Text("LIFE Max Rescue Tube") })
                NavigationLink(destination: UnitsView(), label: { Text("LIFE UNITS") })
                NavigationLink(destination: LocationView(), label: { Text("Location") })
                NavigationLink(destination: ManeuversView(), label: { Text("Maneuvers") })
                Link("Shop", destination: URL(string: "https://www.elifeguard.com/life-tube")!)
            }
            .navigationTitle("Rescue Tube")
            Text("Select the options")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
