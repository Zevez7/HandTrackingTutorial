//
//  HandTrackingTutorialApp.swift
//  HandTrackingTutorial
//
//  Created by Dat Nguyen on 11/17/24.
//

import SwiftUI

@main
struct HandTrackingTutorialApp: App {

    var body: some Scene {
        WindowGroup{
            MainView()
        }
        ImmersiveSpace(id:"ContentView"){
            ContentView()
        }
    }
}
