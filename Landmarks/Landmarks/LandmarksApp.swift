//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Bruno Henrique Ferraz da Silva on 24/03/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
