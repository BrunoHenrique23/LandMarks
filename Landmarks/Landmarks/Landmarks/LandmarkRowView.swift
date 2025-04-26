//
//  LandmarkRowView.swift
//  Landmarks
//
//  Created by Bruno Henrique Ferraz da Silva on 28/03/25.
//

import SwiftUI

struct LandmarkRowView: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    let landmark = ModelData().landmarks
    return Group{
        LandmarkRowView(landmark: landmarks[0])
        LandmarkRowView(landmark: landmarks[1])

    }
}


