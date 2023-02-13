//
//  MapView.swift
//  Landmarks
//
//  Created by Jaswitha Reddy G on 2/12/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{setRegion(coordinate)}
    }
    
    private func setRegion(_ coordiante: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
        center: coordiante,
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 37.494617, longitude: -88.871268))
    }
}
