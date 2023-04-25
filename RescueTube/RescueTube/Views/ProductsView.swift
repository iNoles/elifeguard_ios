//
//  ProductsView.swift
//  RescueTube
//
//  Created by TECH1 on 4/18/23.
//

import SwiftUI

struct ProductsView: View {
    private let titles = ["Specs", "Photo"]
    @State private var selectedTab = 0
    
    private var title: String = ""
    private var image: String = ""
    private var weight: String = ""
    private var imagePaths = [URL]()
    
    init(title: String, image: String, weight: String, sku: String) {
        self.title = title
        self.image = image
        self.weight = weight
        self.imagePaths = Bundle.main.urls(forResourcesWithExtension: nil, subdirectory: sku) ?? []
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    Picker("", selection: $selectedTab) {
                        ForEach(0 ..< titles.count, id: \.self) { index in
                            Text(self.titles[index]).tag(index)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.top, 8)
                    Spacer()
                }
                .padding(.horizontal, 100)
                Divider()
                
                if (selectedTab == 0) {
                    List {
                        Image(uiImage: UIImage(named: image)!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        SpecsListItem(title: "Weight", subtitle: weight)
                        SpecsListItem(title: "Tube Color(s) may be available", subtitle: "Lifeguard Red™, Waterman™ Blue, Safety Yellow, Fuchsia, Purple")
                        SpecsListItem(title: "Available Strap Color", subtitle: "Black")
                    }
                } else {
                    ScrollView {
                        LazyVGrid(
                            columns: Array(
                                repeating: GridItem(spacing: 8), count: 3
                            ),
                            spacing: 1
                        ) {
                            ForEach(Array(imagePaths.enumerated()), id: \.offset) { index, item in
                                NavigationLink(destination: PhotoDetailView(selection: index, urls: imagePaths), label: {
                                    PhotoGridItemView(url: item)
                                })
                            }
                        }
                    }
                }
            }
            .navigationTitle(title)
        }
        .navigationViewStyle(.stack)
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView(
            title: "LIFE™ Max Rescue Tube",
            image: "mactubemeasurementsmax.jpg",
            weight: "4 lb",
            sku: "195"
        )
    }
}
