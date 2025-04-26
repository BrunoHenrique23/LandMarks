//
//  ContentView.swift
//  Landmarks
//
//  Created by Bruno Henrique Ferraz da Silva on 24/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandMarkListView()
        }
    }


#Preview {
    ContentView()
        .environment(ModelData())
}
