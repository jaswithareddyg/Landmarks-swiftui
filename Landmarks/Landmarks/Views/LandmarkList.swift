//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jaswitha Reddy G on 2/13/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) {landmark in LandmarkRow(landmark: landmark)}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
