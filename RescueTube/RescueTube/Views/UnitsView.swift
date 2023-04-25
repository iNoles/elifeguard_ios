//
//  UnitsView.swift
//  RescueTube
//
//  Created by TECH1 on 3/14/23.
//

import SwiftUI

struct UnitsView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Image(uiImage: UIImage(named: "life_units")!)
                    Text("The LIFE UNIT™ Buoyancy Classification System was developed to provide lifesavers and aquatic patrons with an internationally accepted method of determining the available buoyancy of water rescue and safety devices.")
                }
                Text("One LIFE UNIT™ (LU) is the force required to accelerate one kilogram at a rate of one meter per second squared.\n")
                Text("1 LU = 1 kg * m/s2")
                Spacer()
            }
            .navigationTitle("LIFE UNIT")
        }.navigationViewStyle(.stack)
    }
}

struct UnitsView_Previews: PreviewProvider {
    static var previews: some View {
        UnitsView()
    }
}
