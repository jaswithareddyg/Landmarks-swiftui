//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jaswitha Reddy G on 2/13/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) {landmark in NavigationLink {LandmarkDetail(landmark: landmark)} label: {
                LandmarkRow(landmark: landmark)}
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone Xs Max"], id: \.self) { deviceName in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
