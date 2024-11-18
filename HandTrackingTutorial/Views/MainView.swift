//
//  ContentView.swift
//  HandTrackingTutorial
//
//  Created by Dat Nguyen on 11/17/24.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct MainView: View {
    
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace

    var body: some View {

        Text("Drag Example").onAppear {
            Task {
                await openImmersiveSpace(id: "ContentView")}
            
            print("content view")
        }

    }

}
#Preview(windowStyle:.volumetric) {
    MainView()
}
