//
//  Plant.swift
//  HappyPlants
//
//  Created by Robert Liu on 7/27/23.
//

import SwiftUI

struct Plant: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var color: Color
    var wateringFrequency: Int
    var nextWateringDate: Date

    static func == (lhs: Plant, rhs: Plant) -> Bool {
        return lhs.id == rhs.id
    }
}

