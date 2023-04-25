//
//  SpecsListItem.swift
//  RescueTube
//
//  Created by TECH1 on 4/18/23.
//

import SwiftUI

struct SpecsListItem: View {
    
    var title: String
    var subtitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title).font(.headline)
            Text(subtitle).font(.subheadline)
        }
    }
}

struct SpecsListItem_Previews: PreviewProvider {
    static var previews: some View {
        SpecsListItem(title: "Title", subtitle: "Subtitle")
    }
}
