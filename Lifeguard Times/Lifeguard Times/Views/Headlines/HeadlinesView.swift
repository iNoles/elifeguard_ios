//
//  HeadlinesView.swift
//  Lifeguard Times
//
//  Created by TECH1 on 5/4/23.
//

import SwiftUI

struct HeadlinesView: View {
    @State private var selectedTab = "news"
    @ObservedObject var viewModel = HeadlinesViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    Picker("", selection: $selectedTab) {
                        Text("News").tag("news")
                        Text("Health").tag("Health")
                        Text("Tech").tag("tech")
                        Text("Events").tag("events")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .onChange(of: selectedTab, perform: { value in
                        viewModel.parseSchedules(category: value)
                    })
                    Spacer()
                }
                Divider()
                
                List(viewModel.feed, id:\.self) { item in
                    NavigationLink(
                        destination: HeadlinesDetailView(feed: item),
                        label: { HeadlinesListItem(feed: item)
                    })
                }
            }
            .navigationTitle("Lifeguard Times")
            .onAppear {
                viewModel.parseSchedules(category: selectedTab)
            }
        }
    }
}

/*struct HeadlinesView_Previews: PreviewProvider {
    static var previews: some View {
        HeadlinesView()
    }
}*/
