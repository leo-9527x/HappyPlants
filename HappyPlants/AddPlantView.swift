//
//  AddPlantView.swift
//  HappyPlants
//
//  Created by Robert Liu on 7/27/23.
//

import SwiftUI

struct AddPlantView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var plantStore: PlantStore

    @State private var name = ""
    @State private var color = Color.green
    @State private var wateringFrequency = ""

    var body: some View {
        ZStack {

            VStack {
                NavigationView {
                    Form {
                        TextField("Name", text: $name)
                        ColorPicker("Pick a color", selection: $color)
                        TextField("Watering Frequency", text: $wateringFrequency)
                    }
                    .navigationBarTitle("Add New Plant", displayMode: .inline)
                }
                Button(action: {
                    let newPlant = Plant(name: name, color: color, wateringFrequency: Int(wateringFrequency) ?? 1, nextWateringDate: Date().addingTimeInterval(86400.0 * Double(Int(wateringFrequency) ?? 1)))
                    plantStore.addPlant(newPlant)
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(width: 120, height: 120)
                        .background(Color.green)
                        .clipShape(Circle())
                }
                .padding(.top, 20)
            }
        }
    }
}




