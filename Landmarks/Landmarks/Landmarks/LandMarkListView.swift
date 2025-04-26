//
//  LandMarkListView.swift
//  Landmarks
//
//  Created by Bruno Henrique Ferraz da Silva on 28/03/25.
//

import SwiftUI

struct LandMarkListView: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly: Bool = false
    
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter{ landmarks in
            (!showFavoritesOnly || landmarks.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show Favorites Only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetailView(landmark: landmark)
                    } label: {
                        LandmarkRowView(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }

}

#Preview {
    LandMarkListView()
        .environment(ModelData())
}
