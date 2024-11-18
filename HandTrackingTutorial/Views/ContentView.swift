//
//  ContentView.swift
//  HandTrackingTutorial
//
//  Created by Dat Nguyen on 11/17/24.
//

import RealityKit
import SwiftUI

struct ContentView: View {
    @State private var boxEntity = ModelEntity()

    var body: some View {

        VStack {
            Text("Hello, World! This is the first commit")
        }
        HStack {
            BoxModel(x: 0, y: 1.0, z: -2.0)
                  BoxModel(x: 0, y: 1.0, z: -2.0)
                  BoxModel(x: 0, y: 1.0, z: -2.0)
                  BoxModel(x: 0, y: 1.0, z: -2.0)
        }.frame(width: 3000, height: 300)
      
//        BoxModel(x: 0.13, y: 1.04, z: -2.0)
    }
}
#Preview(immersionStyle: .automatic) {
    ContentView()
}
