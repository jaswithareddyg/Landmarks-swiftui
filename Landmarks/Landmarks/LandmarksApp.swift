//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jaswitha Reddy G on 2/12/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
