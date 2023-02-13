//
//  ContentView.swift
//  Landmarks
//
//  Created by Jaswitha Reddy G on 2/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Garden of the Gods")
                    .font(.title)
                HStack {
                    Text("Shawnee National Forest")
                        .font(.subheadline)
                    Spacer()
                    Text("Illinois")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Garden of the Gods")
                    .font(.title2)
                Text("One of the most photographed locations in the state of Illinois, Garden of the Gods' scenic beauty is extraordinary. In the recreation area you can hike, camp, nature watch or picnic.")
                Text("From fs.usda.gov")
                    .font(.caption)
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
