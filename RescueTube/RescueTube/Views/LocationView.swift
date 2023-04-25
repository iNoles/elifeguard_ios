//
//  LocationView.swift
//  RescueTube
//
//  Created by TECH1 on 3/14/23.
//

import SwiftUI
import MapKit

struct LocationView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 28.5383, longitude: -81.3792), span: MKCoordinateSpan(latitudeDelta: 6.0, longitudeDelta: 1.0))
    @State var tracking: MapUserTrackingMode = .follow

    var body: some View {
        NavigationView {
            Map(
                coordinateRegion: $region,
                interactionModes: .all,
                showsUserLocation: true,
                userTrackingMode: $tracking,
                annotationItems: readLocationFile()!
            ) {
                MapMarker(coordinate: CLLocationCoordinate2D(latitude: $0.location.lat, longitude: $0.location.lng))
            }
            .navigationTitle("Location")
        }.navigationViewStyle(.stack)
    }
}

func readLocationFile() -> [Location]? {
    return readJSONFromFile(fileName: "location", type: [LocationData].self)?.map {
        Location(location: $0)
    }
}

struct LocationData: Codable {
    let lat: Double
    let lng: Double
}

struct Location: Identifiable {
    var id = UUID()
    var location: LocationData
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
