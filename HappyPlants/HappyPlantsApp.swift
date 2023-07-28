//
//  HappyPlantsApp.swift
//  HappyPlants
//
//  Created by Robert Liu on 7/27/23.
//

import SwiftUI

@main
struct HappyPlantsApp: App {
    @StateObject var plantStore = PlantStore()

    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(plantStore)
        }
    }
}

