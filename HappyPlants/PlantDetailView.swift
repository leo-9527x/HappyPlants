//
//  PlantDetailView.swift
//  HappyPlants
//
//  Created by Robert Liu on 7/27/23.
//

import SwiftUI

struct PlantDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var plantStore: PlantStore
    var plant: Plant

    var body: some View {
        ZStack {
            Color.green.opacity(0.2).edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Text(plant.name)
                    .font(.largeTitle)
                    .foregroundColor(plant.color)
                Text("Next watering date:")
                Text("\(plant.nextWateringDate, style: .date)")
                Button(action: {
                    plantStore.updateWateringDate(plant)
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Mark as watered")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                Button(action: {
                    plantStore.removePlant(plant)
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Delete")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.red)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .padding(.top, 20)
        }
    }
}

