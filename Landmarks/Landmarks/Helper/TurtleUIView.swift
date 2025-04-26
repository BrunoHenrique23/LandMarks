//
//  TurtleUIView.swift
//  Landmarks
//
//  Created by Bruno Henrique Ferraz da Silva on 24/03/25.
//

import SwiftUI

struct TurtleUIView: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 6)
            }
            .shadow(radius: 10)
    }
}

#Preview {
    TurtleUIView(image: Image("turtlerock"))
}
