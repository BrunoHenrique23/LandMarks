//
//  Landmark.swift
//  Landmarks
//
//  Created by Bruno Henrique Ferraz da Silva on 25/03/25.
//

import Foundation
import SwiftUI
import CoreLocation

@Observable
class ModelData{
    var landmarks: [Landmark] = load("landmarkData.json")
}


struct Landmark: Hashable, Codable, Identifiable{
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }

     struct Coordinates: Hashable, Codable {
         var latitude: Double
         var longitude: Double
     }
  
}
