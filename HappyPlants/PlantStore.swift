//
//  PlantStore.swift
//  HappyPlants
//
//  Created by Robert Liu on 7/27/23.
//
import SwiftUI
import Combine

class PlantStore: ObservableObject {
    @Published var plants: [Plant]
    @Published var selectedPlant: Plant?


    init(plants: [Plant] = []) {
        self.plants = plants
    }

    func addPlant(_ plant: Plant) {
        plants.append(plant)
    }

    func removePlant(_ plant: Plant) {
        plants.removeAll(where: { $0.id == plant.id })
    }

    func updateWateringDate(_ plant: Plant) {
        if let index = plants.firstIndex(where: { $0.id == plant.id }) {
            plants[index].nextWateringDate = Date().addingTimeInterval(86400.0 * Double(plants[index].wateringFrequency))
        }
    }
}
