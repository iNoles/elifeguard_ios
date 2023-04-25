//
//  ProductView.swift
//  RescueTube
//
//  Created by TECH1 on 3/14/23.
//

import SwiftUI

struct ProductView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("""
                 The Rescue Tube Reinvented!™ The innovative new LIFE™ Rescue Tube (LIFE™ Tube) features revolutionary molded LIFE GRIPS™ and Easy Grip™ molded surface that combine to make rescuing a drowning victim faster and easier when performing lifesaving maneuvers. The LIFE™ Tube also features a replaceable strap system that allows changing out the strap a breeze. Innovative molded LIFE GRIPS™ allow a rescuer to perform reach assist maneuvers from various positions using the rescue tube. State of the art proprietary foam will not absorb water and deteriorate like that of traditional rescue tubes. Guaranteed to last for years! The New Standard In Rescue Tubes!™\n
                 """)
                .multilineTextAlignment(.leading)
                Text("What lifeguard trainers &amp; lifeguards are saying:\n")
                    .multilineTextAlignment(.center)
                Text("\u{22}Just received the new Rescue Buoy - needless to say, I’m very impressed with the design, manufacture, and durability of this product.  We will attempt to use it during tomorrow’s Ice Rescue Technician course, and am very much looking forward to using it during our spring Water Rescue, Swiftwater Rescue, and Water Rescue Train-the-Trainer Programs.\u{22}\n")
                    .multilineTextAlignment(.leading)
                Text("\u{22}Thanx for posting more videos of new tubes. Our Instructors are very impressed and excited about them. They are showing your videos in class this week.\u{22}\n")
                    .multilineTextAlignment(.leading)
                Text("\u{22}The tube looks amazing! It is exactly what our USLA chapter imagined.\u{22}")
                    .multilineTextAlignment(.leading)
                    .navigationTitle("Product")
                Spacer()
            }
            .navigationTitle("Product")
        }.navigationViewStyle(.stack)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
